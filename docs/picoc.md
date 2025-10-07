# PICOC

Antes de montar a string de busca, é importante entender e preencher o framework **PICOC**, que ajuda a estruturar as buscas de forma sistemática:

- **P — População (Population)**: quem ou o quê está sendo estudado (ex.: arquitetura de software, estudantes universitários, desenvolvedores).
- **I — Intervenção (Intervention)**: o que está sendo aplicado ou investigado (ex.: jogos sérios, game based learning, simulações).
- **C — Comparação (Comparison)**: opcional, alternativa contra a qual a intervenção é comparada (ex.: método tradicional de ensino, outro tipo de ferramenta).
- **O — Outcome (Resultado esperado)**: o que você espera medir, observar, coletar. É o que queremos como resultado (ex.: aprendizado, retenção de conhecimento, ferramentas utilizadas).
- **C — Contexto (Context)**: o cenário em que o estudo ocorre (ex.: ensino superior, curso de Engenharia de Software, país ou idioma).

## Como usar

1. Use aspas para frases exatas ("jogos sérios");
2. Agrupe sinônimos com OR dentro de parênteses ((“jogos sérios” OR “game based learning”));
3. Una elementos diferentes com AND;
4. Use truncamento quando útil (arquitetur*);
5. Refine iterativamente e documente a string final com a data da busca;
6. Em bases como Scopus, você pode restringir campos (TITLE-ABS-KEY(...)) para refinar a busca; ajuste conforme a base. 

> **Atenção**: a execução da string na Scopus pode requerer rede institucional (no seu caso, dentro da rede do CEFET).

## Exemplo de String

1. **Definição dos elementos:**
    - **P**: "Arquitetura de software"
    - **I**: ("jogos sérios" OR "game based learning")
    - **C**:
    - **O**: ("ferramentas" OR "aplicações")
    - **C**:
2. **Montagem simples:**   
    - ("Arquitetura de software") AND ("jogos sérios" OR "game based learning") AND ("ferramentas" OR "aplicações")
3. **Montagem para Scopus:**
    - TITLE-ABS-KEY(("Arquitetura de software") AND ("jogos sérios" OR "game based learning") AND ("ferramentas" OR "aplicações"))