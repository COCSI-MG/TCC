# 📘 Manual de TCC

Este repositório tem como objetivo apresentar recomendações para elaboração do Trabalho de Conclusão de Curso (TCC) dos alunos do CEFET de Maria de Graça de Sistemas de Informação. Aqui você encontrará boas práticas, um template organizado, a estrutura sugerida dos capítulos e algumas dicas importantes.

⚠️ Atenção: este guia apresenta apenas recomendações. Dependendo do tema e do formato do trabalho, adaptações podem ser necessárias.

## 🚀 Orientações Iniciais

### 🎯 Tema de Pesquisa
A primeira etapa de qualquer trabalho é a definição do tema de pesquisa. Todo TCC deve conter uma questão de pesquisa clara e bem delimitada, que será respondida ao longo do trabalho. A questão deve ser objetiva e ter um propósito definido. Evite temas muito amplos ou vagos.
Exemplo: *Como os conhecimentos de Arquitetura de Software podem ser reforçados por meio da utilização de Jogos Sérios?*
O trabalho deve ser relevante, de modo que possa inclusive gerar um artigo acadêmico. Importante: o simples desenvolvimento de uma aplicação não é uma questão de pesquisa. Isso pode ser um objetivo específico, mas o TCC deve ir além.

### 📑 Publicações
Todos os trabalhos orientados por mim devem gerar publicações. Estamos investindo tempo e esforço para criar algo de impacto acadêmico.
Benefícios: relevância científica e profissional, reconhecimento acadêmico e possibilidade de ingresso em programas de mestrado.

### 🛠️ Ambiente de Escrita
Cada aluno deve: baixar o template disponível neste repositório; criar um repositório próprio no GitHub para o TCC; compartilhar o repositório comigo no e-mail **diego.castro@cefet-rj.br**.
Ferramentas necessárias: [VS Code](https://code.visualstudio.com/), extensão **LaTeX Workshop** (VS Code) e [MikTeX](https://miktex.org/).
Tutoriais recomendados: [Tutorial 1](https://www.youtube.com/watch?v=2VlV973dL3E) e [Tutorial 2](https://www.youtube.com/watch?v=4lyHIQl4VM8).

## 📚 Referências e Citações
Nenhuma afirmação pode ser feita sem referência bibliográfica. Utilize o arquivo **BibTeX** para armazenar referências coletadas no Google Scholar. Use os comandos `\cite` e `\citep` para citar corretamente.

Boas práticas: evite apud (citações de citações), evite referências diretas no texto e prefira escrever a ideia com suas palavras e citar no final.

❌ Exemplo incorreto:
De acordo com João (2024), usar computador pode melhorar nossa produtividade.

✅ Exemplo correto:
O uso do computador pode aumentar a produtividade [1].

## 📝 Estrutura do TCC
Abaixo estão os capítulos mais comuns de um TCC. Eles servem como receita básica, mas podem variar conforme o trabalho.

📌 Dica: cada capítulo deve começar com um parágrafo introdutório (prefácio) explicando o que será apresentado.
Exemplo: *Este capítulo apresenta a introdução do problema, a metodologia adotada e a organização geral do trabalho.*

### 1. Introdução
A introdução deve conter:

- **Conceituação**: explica o problema abordado, demonstra por meio de referências que ele existe, aponta caminhos de solução e deve terminar apresentando a questão de pesquisa (em negrito).

- **Objetivos**: objetivo geral (responder à questão de pesquisa) e objetivos específicos (caracterizar o estado da arte, desenvolver protótipos, avaliar a solução proposta).

- **Metodologia**: explica os passos adotados para sair do problema até a solução. Exemplos de metodologias:
  - **Design Science Research (Metodologia baseada em evidências):** Dresch, Aline; Lacerda, Daniel Pacheco; Antunes Jr., José Antônio Valle. *Design Science Research: A Method for Science and Technology Advancement*. Cham: Springer International Publishing, 2014. p. 67–102.
  - **Metodologia definida pelo autor:** Kuhn, Thomas S. *A Estrutura das Revoluções Científicas*. 12. ed. São Paulo: Editora Perspectiva, 2020. p. 39–40.

- **Organização do texto**: breve descrição do que será apresentado em cada capítulo.

### 2. Fundamentação Teórica
Apresenta conceitos, ferramentas e informações relevantes para o trabalho. Exemplo: jogos sérios, arquitetura de software, metodologias de ensino, etc.

### 3. Revisão da Literatura / Trabalhos Relacionados
Apresenta trabalhos semelhantes ao seu. Pode ser feita de duas formas: pesquisa exploratória no Google Scholar ou revisão estruturada via Rapid Review.

#### Como usar o framework PICOC
Antes de montar a string de busca, é importante entender e preencher o framework **PICOC**, que ajuda a estruturar as buscas de forma sistemática:
- **P — População (Population)**: quem ou o quê está sendo estudado (ex.: arquitetura de software, estudantes universitários, desenvolvedores).
- **I — Intervenção (Intervention)**: o que está sendo aplicado ou investigado (ex.: jogos sérios, game based learning, simulações).
- **C — Comparação (Comparison)**: opcional, alternativa contra a qual a intervenção é comparada (ex.: método tradicional de ensino, outro tipo de ferramenta).
- **O — Outcome (Resultado esperado)**: o que você espera medir, observar, coletar. É o que queremos como resultado (ex.: aprendizado, retenção de conhecimento, ferramentas utilizadas).
- **C — Contexto (Context)**: o cenário em que o estudo ocorre (ex.: ensino superior, curso de Engenharia de Software, país ou idioma).

Dicas práticas para montar a string: use aspas para frases exatas ("jogos sérios"), agrupe sinônimos com OR dentro de parênteses ((“jogos sérios” OR “game based learning”)), una elementos diferentes com AND, use truncamento quando útil (arquitetur*), refine iterativamente e documente a string final com a data da busca. Em bases como Scopus, você pode restringir campos (TITLE-ABS-KEY(...)) para refinar a busca; ajuste conforme a base. Atenção: a execução da string na Scopus pode requerer rede institucional (no seu caso, dentro da rede do CEFET).

#### Exemplo de string
1. Definição dos elementos:
   - P: "Arquitetura de software"
   - I: ("jogos sérios" OR "game based learning")
   - O: ("ferramentas" OR "aplicações")
2. Montagem simples:
   ("Arquitetura de software") AND ("jogos sérios" OR "game based learning") AND ("ferramentas" OR "aplicações")
3. Montagem para Scopus:
   TITLE-ABS-KEY(("Arquitetura de software") AND ("jogos sérios" OR "game based learning") AND ("ferramentas" OR "aplicações"))

#### Rapid Review
Utiliza o framework PICOC para montar a string de busca (conforme explicado acima). Execute a string na base Scopus (preferencialmente pela rede do CEFET). Filtre e selecione artigos relevantes para leitura completa.

#### Análise dos artigos retornados
Ferramenta recomendada: [Parsif.al](https://parsif.al).
Processo de filtragem: leitura dos títulos → exclusão de artigos irrelevantes; leitura dos resumos (abstracts) → nova filtragem; leitura completa apenas dos artigos restantes → responder às questões de pesquisa.

### 4. Proposta
Capítulo mais particular do trabalho. Deve conter no mínimo duas seções: apresentação da proposta e avaliação da proposta.

### 5. Conclusão
Retoma os principais pontos do trabalho. Relembra a conceituação, a revisão da literatura (quando houver) e a proposta apresentada. Ressalta contribuições e limitações. Responde à questão de pesquisa definida na Introdução.
