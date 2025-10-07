# Configuração de ambiente

Para seguir este guia e desenvolver seu TCC de forma organizada, você precisará ter algumas ferramentas de pré-requisito.

## 📋 Pré-requisitos

- <a href="https://git-scm.com" target="_blank">🛠️ Git</a>
- <a href="https://code.visualstudio.com" target="_blank">💻 VS Code</a>
- <a href="https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop" target="_blank">📦 Extensão LaTeX Workshop (VS Code)</a>
- <a href="https://miktex.org/" target="_blank">📚 MikTek</a>

Para verificarmos se a instalação do git e do MikTek foi concluida, podemos executar os seguintes comandos no terminal:

```bash
git --version
```

```bash
pdflatex --version
```

## 📑 Tutoriais Recomendados

Recomenda-se assistir dois tutorias em caso de dúvidas de configuração:

- <a href="https://www.youtube.com/watch?v=4lyHIQl4VM8" target="_blank">💻 Windows</a>
- <a href="https://www.youtube.com/watch?v=2VlV973dL3E" target="_blank">🐧 Linux</a>

## 📂 Clone do repositorio

Para iniciar com a utilização, é necessario clonarmos o repositorio em questão. Para isso, basta digitarmos o seguinte comando no terminal com o git instalado.

```bash
git clone https://github.com/COCSI-MG/TCC.git
```

Após isso, é necessario excluirmos alguns arquivos que não serão utilizados.

- `.git` – remove o histórico remoto para que você possa criar seu próprio repositório Git.
- `.github` – revemo os arquivos do github.
- `./docs` – limpa essa documentação exemplo que não será usada localmente.
- `mkdocs.yml` – limpa a configuração da documentação exemplo.
- `README.md` – limpa o README.
- `docker-compose.yml` – docker para rodar a documentação.

Caso queira fazer isso via terminal, podemos executar o seguinte comando no root da nossa pasta clonada:

* Windows:

```powershell
# Apagar a pasta .git
rmdir /s /q .git

# Apagar a pasta docs
rmdir /s /q docs

# Apagar mkdocs.yml e README.md
del mkdocs.yml
del README.md
del docker-compose.yml
```

* Linux:

```bash
# Apagar a pasta .git
rm -rf .git

# Apagar a pasta docs
rm -rf docs

# Apagar mkdocs.yml e README.md
rm -f mkdocs.yml README.md docker-compose.yml
```

Após criar o seu repositório Git, lembre-se de compartilhá-lo comigo pelo e-mail diego.castro@cefet-rj.br ou com o e-mail do seu orientador.

✅ Agora que o ambiente está configurado e o projeto inicial foi preparado, você já pode seguir para a próxima etapa e começar a escrever o seu TCC.