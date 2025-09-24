\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tcc}[2018/08/08 TCC]

\LoadClass[12pt,a4paper]{report}

%% Load additional packages and commands.
\RequirePackage[a4paper, left=3cm, right=2cm, top=3cm, bottom=2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[square,authoryear]{natbib}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage{amsmath}
\RequirePackage{booktabs}
\RequirePackage{colortbl}
\RequirePackage{datagidx}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{framed}
\RequirePackage{graphicx}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{indentfirst}
\RequirePackage{makeidx}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{ragged2e}
\RequirePackage{sectsty}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{wrapfig}
\RequirePackage{xcolor}
\RequirePackage{mathptmx}
\RequirePackage{subfig}
\RequirePackage[labelfont=bf]{caption}
\RequirePackage{pdfpages}
\RequirePackage{chngcntr}
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\RequirePackage{amssymb}
\RequirePackage[noend]{algpseudocode}

%% Additional TeX/LaTeX code...
\makeatletter
\def\BState{\State\hskip-\ALG@thistlm}
\makeatother

\renewcommand {\baselinestretch}{1.5}
\setlength\parindent{1.25cm}

\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0cm}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[R]{\thepage}
\fancypagestyle{plain}{
	\fancyhf{}%
        \fancyhead[R]{\thepage}
}

\chapterfont{}
\sectionfont{\normalsize \bfseries \flushleft}

\titleformat{\chapter}[display]
{\fontsize{18pt}{\baselineskip}\selectfont\bfseries}{\chaptertitlename\ \thechapter}{2em}{}
\titlespacing*{\chapter}{0pt}{-2em}{2em}

\titleformat{\section}[hang]
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}{\thesection}{2em}{}
\titlespacing*{\section}{0pt}{1em}{1em}

\titleformat{\subsection}[hang]
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}{\thesubsection}{2em}{}
\titlespacing*{\subsection}{0pt}{1em}{1em}

\setlength{\cftbeforetoctitleskip}{-2em}
\setlength{\cftaftertoctitleskip}{2em}
\renewcommand{\cfttoctitlefont}{\hfill\large\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}

\pagestyle{fancy}
\fancyhf{}
\fancyheadoffset{0cm}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhead[R]{\thepage}
\fancypagestyle{plain}{
	\fancyhf{}%
	\fancyhead[R]{\thepage}
}

\chapterfont{}
\sectionfont{\normalsize \bfseries \flushleft}


\titleformat{\chapter}[display]
{\fontsize{18pt}{\baselineskip}\selectfont\bfseries}{\chaptertitlename\ \thechapter}{2em}{}
\titlespacing*{\chapter}{0pt}{-2em}{2em}

\titleformat{\section}[hang]
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}{\thesection}{2em}{}
\titlespacing*{\section}{0pt}{1em}{1em}

\titleformat{\subsection}[hang]
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}{\thesubsection}{2em}{}
\titlespacing*{\subsection}{0pt}{1em}{1em}

\setlength{\cftbeforetoctitleskip}{-2em}
\setlength{\cftaftertoctitleskip}{2em}
\renewcommand{\cfttoctitlefont}{\hfill\large\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}



% Centraliza Lista de Tabelas
\setlength{\cftbeforelottitleskip}{-2em}
\setlength{\cftafterlottitleskip}{2em}
\renewcommand{\cftlottitlefont}{\hfill\bfseries\large}
\renewcommand{\cftafterlottitle}{\hfill}
\newlength{\mylen}
\renewcommand{\cfttabpresnum}{TABELA\enspace}
\renewcommand{\cfttabaftersnum}{:}
\settowidth{\mylen}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\mylen}

% Centraliza Lista de Figuras
\setlength{\cftbeforeloftitleskip}{-2em}
\setlength{\cftafterloftitleskip}{2em}
\renewcommand{\cftloftitlefont}{\hfill\bfseries\large}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftfigpresnum}{FIGURA\enspace}
\renewcommand{\cftfigaftersnum}{:}
\settowidth{\mylen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\mylen}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\newcommand\Tstrut{\rule{0pt}{2.6ex}} % = `top' strut
\newcommand\Bstrut{\rule[-0.9ex]{0pt}{0pt}} % = `bottom' strut
\newcommand{\specialcell}[2][c]{%
	\begin{tabular}[#1]{@{}c@{}}#2\end{tabular}}

\newgidx{acronym}{\hfill \fontsize{16pt}{\baselineskip}\selectfont \textbf{LISTA DE ABREVIAÇÕES} \hfill}
\DTLgidxSetDefaultDB{acronym}

%dcover
\newcommand\dcover{%
	\thispagestyle{empty} % sem numeracao

	\newgeometry{left=3cm, right=2cm, top=3cm, bottom=2cm}
	\center % Center everything on the page

	\begin{minipage}{\textwidth}
		\begin{center}
			{\bfseries \large CEFET/RJ - CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA CELSO SUCKOW DA FONSECA}\\[6em]
			{\bfseries \LARGE \dtitle}\\[6em]% Title of your document
			\raggedleft \dauthor
		\end{center}
	\end{minipage}\\[6em]

	\begin{flushright}
		\begin{minipage}{0.5\textwidth}
			\normalsize
			\raggedleft
		\end{minipage}\\[6em]
	\end{flushright}

	\begin{flushright}
		\begin{minipage}{0.5\textwidth}
			\raggedleft
			Prof. Orientador: \\
			\dadvisor
		\end{minipage}\\
	\end{flushright}
	\vfill
	{\bfseries \large Rio de Janeiro,\\
		Novembro de 2024}
}

%dcoverback
\newcommand\dcoverback{%


	\newgeometry{left=3cm, right=2cm, top=3cm, bottom=2cm}
	\center % Center everything on the page

	\begin{minipage}{\textwidth}
		\begin{center}
			{\bfseries \large CEFET/RJ - CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA CELSO SUCKOW DA FONSECA}\\[6em]
			{\bfseries \LARGE \dtitle}\\[6em]% Title of your document
			\raggedleft \dauthor
		\end{center}
	\end{minipage}\\[6em]
	\thispagestyle{empty} % sem numeracao
	\begin{flushright}
		\begin{minipage}{0.5\textwidth}
			\normalsize
			\raggedleft
			Projeto final apresentado em cumprimento às normas do Departamento de Educação Superior do Centro Federal de Educação Tecnológica Celso Suckow da Fonseca, CEFET/RJ, como parte dos requisitos para obtenção do título de Bacharel em Sistemas de Informação.
		\end{minipage}\\[6em]
	\end{flushright}

	\begin{flushright}
		\begin{minipage}{0.5\textwidth}
			\raggedleft
			Prof. Orientador: \\
			\dadvisor
		\end{minipage}\\
	\end{flushright}
	\vfill
	{\bfseries \large Rio de Janeiro,\\
		Novembro de 2024}
}
%dform

\newcommand{\dlibrary}[1]{
        \includepdf{#1} % página pdf ou png feita pela biblioteca
	\center % Center everything on the page
	\vfill
	\pagebreak
}

%ddedicatory
\newcommand{\ddedicatory}[1]{
    \clearpage
    \begin{center}
        {\fontsize{16pt}{\baselineskip}\selectfont \textbf{DEDICATÓRIA}}
    \end{center}
    \vspace*{\fill} % Joga o texto para o final da página
    \begin{flushright}
        \begin{minipage}{8cm}
            \setstretch{1.5}
            \raggedleft \normalsize #1
        \end{minipage}
    \end{flushright}
    \vspace*{2\baselineskip} % espaço extra após o texto
    \newpage
}

\newcommand{\depigrafe}[1]{
    \vspace*{\fill} % Move para a parte inferior da página
    \begin{flushright} % Alinha todo o conteúdo à direita
        \begin{minipage}{0.4\textwidth} % Controla a largura do texto
            \itshape #1
        \end{minipage}\\
        \vspace{1em} % Adiciona espaço entre a citação e o autor
        \textbf{(Nome do autor)}
    \end{flushright}
    \vspace{1cm} % Espaçamento abaixo para melhor posicionamento
    \newpage
}

%ddedicatory
\newcommand{\dacknowledgment}[1]{
\clearpage
\begin{center}

{\fontsize{16pt}{\baselineskip}\selectfont \textbf{AGRADECIMENTOS}}
%\thispagestyle{empty}
\end{center}

\justifying
\noindent
#1
\pagebreak
}

%dresumo
\newcommand{\dresumo}[2]{
\begin{center}
	{\fontsize{16pt}{\baselineskip}\selectfont \textbf{RESUMO}}\\[2em]
\end{center}

\justifying
\noindent
#1
\\[3em]

\normalsize\noindent
\textbf{Palavras-chaves}: #2

\pagebreak
}

%dabstract
\newcommand{\dabstract}[2]{
	\begin{center}
		{\fontsize{16pt}{\baselineskip}\selectfont \textbf{ABSTRACT}}\\[2em]
	\end{center}

	\justifying
	\noindent
	#1
	\\[3em]

	\normalsize\noindent
	\textbf{Keywords}: #2

	\pagebreak
}

%dtables
\newcommand{\dtables}{

%\renewcommand{\backrefpagesname}{Citado na(s) página(s):~}
%\renewcommand{\backref}{Citado na(s) página(s):~}

\addto\captionsbrazil{\renewcommand*\contentsname{\fontsize{16pt}{\baselineskip}\selectfont\textbf{SUMÁRIO}}}
\addto\captionsbrazil{\renewcommand*\listtablename{\fontsize{16pt}{\baselineskip}\selectfont \textbf{LISTA DE TABELAS}}}
\addto\captionsbrazil{\renewcommand*\listfigurename{\fontsize{16pt}{\baselineskip}\selectfont \textbf{LISTA DE FIGURAS}}}

\renewcommand{\cftdot}{}
\tableofcontents
\pagebreak

\listoffigures
\pagebreak

%\listoftables
%\pagebreak

\printterms[database=acronym,columns=1,prelocation=hfill,style=align]
\label{lastpretextualpage}
\pagebreak

}





\endinput