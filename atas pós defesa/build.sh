#!/usr/bin/env bash
# Lê latex/.env, preenche os 4 templates .tex com os valores informados
# e compila os PDFs, salvando-os na pasta definida em OUTPUT_DIR (dentro do .env).
set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEX_DIR="$ROOT_DIR/latex"
ENV_FILE="$TEX_DIR/.env"

if [ ! -f "$ENV_FILE" ]; then
  echo "Arquivo .env não encontrado em: $ENV_FILE"
  exit 1
fi

# Carrega as variáveis do .env no ambiente do script
set -a
# shellcheck source=/dev/null
source "$ENV_FILE"
set +a

# Curso fixo, não precisa vir do .env
export CURSO="Sistemas de Informação"

# Nome do aluno e título do projeto vêm do TCC do aluno (\dauthor e \dtitle
# em main.tex, na raiz do repositório), não são digitados de novo no .env.
MAIN_TEX="$ROOT_DIR/../main.tex"
if [ ! -f "$MAIN_TEX" ]; then
  echo "main.tex do TCC não encontrado em: $MAIN_TEX"
  exit 1
fi
ALUNO_NOME="$(grep -oP '\\dauthor\{\K[^}]*' "$MAIN_TEX")"
TITULO_PROJETO="$(grep -oP '\\dtitle\{\K[^}]*' "$MAIN_TEX")"
if [ -z "$ALUNO_NOME" ] || [ -z "$TITULO_PROJETO" ]; then
  echo "Não foi possível extrair \\dauthor/\\dtitle de: $MAIN_TEX"
  exit 1
fi
export ALUNO_NOME TITULO_PROJETO

# Orientador é sempre o primeiro membro da banca
export ORIENTADOR_SIAPE="$BANCA1_SIAPE"

# Data da defesa igual à data de assinatura
export DEFESA_DATA="$DATA_DIA de $DATA_MES de $DATA_ANO"

# Uma nota só, replicada para todos os campos de nota da Ata
for campo in NE1 NE2 NE3 NE4 NE5 NE NO1 NO2 NA1 NA2 NA3 NA4 NA5 NA ALUNO_NPF; do
  export "$campo=$NOTA"
done

# Linha da folha de rosto montada a partir do nome e titulação de cada membro da banca
export BANCA1_LINHA="Prof. $BANCA1_TITULACAO $BANCA1_NOME"
export BANCA2_LINHA="Prof. $BANCA2_TITULACAO $BANCA2_NOME"
export BANCA3_LINHA="Prof. $BANCA3_TITULACAO $BANCA3_NOME"

# Resolve a pasta de saída (relativa à pasta latex/, onde fica o .env, ou absoluta)
OUTPUT_DIR="${OUTPUT_DIR:-..}"
case "$OUTPUT_DIR" in
  /*) ;;
  *) OUTPUT_DIR="$TEX_DIR/$OUTPUT_DIR" ;;
esac
mkdir -p "$OUTPUT_DIR"
OUTPUT_DIR="$(cd "$OUTPUT_DIR" && pwd)"

# Nomes de todas as variáveis definidas no .env, mais as calculadas acima
VAR_NAMES="$(grep -oE '^[A-Za-z_][A-Za-z0-9_]*' "$ENV_FILE" | grep -v '^OUTPUT_DIR$') ALUNO_NOME TITULO_PROJETO CURSO ORIENTADOR_SIAPE DEFESA_DATA NE1 NE2 NE3 NE4 NE5 NE NO1 NO2 NA1 NA2 NA3 NA4 NA5 NA ALUNO_NPF BANCA1_LINHA BANCA2_LINHA BANCA3_LINHA"

ARQUIVOS=(
  "1_declaracao_liberacao_nota"
  "2_termo_autorizacao_divulgacao"
  "3_ata_defesa"
  "4_folha_rosto"
)

WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

cp "$TEX_DIR/preambulo.tex" "$WORK_DIR/"

for f in "${ARQUIVOS[@]}"; do
  echo "Preenchendo e compilando $f.tex..."
  cp "$TEX_DIR/$f.tex" "$WORK_DIR/$f.tex"

  for var in $VAR_NAMES; do
    value="${!var}"
    # Escapa caracteres especiais do LaTeX no valor
    esc=$(printf '%s' "$value" | sed \
      -e 's/\\/\\textbackslash{}/g' \
      -e 's/&/\\\&/g' \
      -e 's/%/\\%/g' \
      -e 's/#/\\#/g' \
      -e 's/_/\\_/g' \
      -e 's/\$/\\$/g')
    # Escapa o resultado para uso seguro como substituição do sed (delimitador |)
    esc_sed=$(printf '%s' "$esc" | sed -e 's/\\/\\\\/g' -e 's/[&|]/\\&/g')
    sed -i "s|<<$var>>|$esc_sed|g" "$WORK_DIR/$f.tex"
  done

  (
    cd "$WORK_DIR"
    pdflatex -interaction=nonstopmode "$f.tex" > "$f.log" 2>&1
    pdflatex -interaction=nonstopmode "$f.tex" > "$f.log" 2>&1
  )
  cp "$WORK_DIR/$f.pdf" "$OUTPUT_DIR/$f.pdf"
done

echo "PDFs gerados em: $OUTPUT_DIR"
