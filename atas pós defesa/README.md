# Atas pós defesa

## Gerar os PDFs

Preencha `latex/.env` com os dados do aluno, título, banca, notas e data. Depois rode:

```
bash build.sh
```

Os 4 PDFs são gerados na pasta indicada em `OUTPUT_DIR` do `.env`:

- `1_declaracao_liberacao_nota.pdf`
- `2_termo_autorizacao_divulgacao.pdf`
- `3_ata_defesa.pdf`
- `4_folha_rosto.pdf`

## Depois de gerar

1. Colher assinatura do orientador na declaração de liberação de nota e da banca na ata da defesa.
2. Aluno assina o termo de autorização de divulgação.
3. Inserir a folha de rosto gerada como a **terceira folha** do PDF do TCC.
4. Enviar por e-mail para `bibmg.ref@cefet-rj.br`, em cópia o orientador, pedindo a ficha catalográfica. Anexar o PDF do TCC (já com a folha de rosto) e os 4 documentos assinados.
