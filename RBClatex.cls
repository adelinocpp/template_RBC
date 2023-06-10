%===========================================================================
%  RBClatex.cls - Adaptado ca classe para o SBrT IEEEtran.cls, sbrt2013port.cls 
%  por Antonio Picorone.
%  
%  Adelino Pinheiro Silva - adelinocpp@yahoo.com
%
%===========================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RBClatex}[2018/04/26 (dia dos Vingadores 3) v0.1 por Adelino P. Silva]
\typeout{-- No futuro teremos um log de alterações.}


\LoadClass[article,10pt,a4paper,oneside,twocolumn,english,brazil]{memoir}


\newenvironment{FonteCabecalhoPreRevisao}{\fontsize{8}{9.2}\selectfont\color{red}}{}
\newenvironment{FonteCabecalhoPosRevisao}{\fontsize{8}{9.2}\selectfont\color{black}}{}
\DeclareTextFontCommand{\FCPreR}{\FonteCabecalhoPreRevisao}
\DeclareTextFontCommand{\FCPosR}{\FonteCabecalhoPosRevisao}


%=================para SBT2015 portugues===============================
% ==== LISTA DE PACOTES ==================================================
% --- Portugues ----------------------------------------------------------
\usepackage[portuguese]{babel}
% --- Manipulação de figuras ---------------------------------------------
\usepackage[dvips]{graphicx}			% Inclusão de gráficos
\usepackage{epsf}
\usepackage{wrapfig}			% Permite alocar um espaço para figuras e tabelas entre o texto
\usepackage{color}				% Controle das cores
\usepackage[figuresright]{rotating}
% --- Blocos de autores e numeração de páginas ------------------- --------
\usepackage[blocks]{authblk}
\usepackage{lastpage}
\setcounter{page}{1} % custom first page number
\usepackage{varwidth}
% --- Configureções de fontes e parágrafos -------------------------------
\usepackage{lmodern}			% Usa a fonte Latin Modern
\usepackage[T1]{fontenc}		% Selecao de codigos de fonte.
\usepackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
\usepackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.	
\usepackage{microtype} 			% para melhorias de justificação do texto
\usepackage{hyphenat}			% permite definir hifienizção
% --- Pacotes para figuras e tabelas -------------------------------------
\usepackage{multirow}
\usepackage{geometry}
% --- captions em negrito ------------------------------------------------
\usepackage[style=base,labelfont=bf,font=footnotesize]{caption}	% permite configurar os captions de figuras e tabelas
% --- Configura o tipo de sublinhado -------------------------------------
\usepackage[normalem]{ulem}
% --- Pacote para definição de comandos ----------------------------------
\usepackage{etoolbox} 
% --- Enumeracao de elementos --------------------------------------------
\usepackage{enumitem}
% --- Paragrafo ----------------------------------------------------------
\usepackage{scrextend}
% --- Permite fazer as referências de texto ------------------------------
\usepackage{hyperref}
% --- Definir os espaçamentos entre linhas -------------------------------
\usepackage{setspace}
% --- Pacote adicional ---------------------------------------------------
\usepackage{lipsum}				% para geração de dummy text
% --- Ambiente verbatim que permite quebrar linha ------------------------
\usepackage{listings}
% ========================================================================


% \usepackage{wordlike} % How know?

% === Configurações da bibliografia ======================================
\usepackage[numbers,sort&compress]{natbib}
\bibliographystyle{RBC}
% ========================================================================

% ========================================================================
% ========================================================================

\setlength{\ULdepth}{1.25pt} % ajusta a profundidade do sublinhado

% Define a centralização de coluna com largura {|C{1 cm}|}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% === Configurações do memoir ============================================
\setsecnumdepth{subsubsection}
\setsecheadstyle{\normalsize\bfseries\uppercase}
\setsubsecheadstyle{\normalsize\itshape\bfseries}
\setsubsubsecheadstyle{\normalsize\itshape}

\addto{\captionsportuguese}
{\renewcommand{\bibname}{\protect\leftline{\uppercase{Refer\^encias Bibliogr\'aficas}}}}

\renewcommand{\absnamepos}{flushleft}
\setlength{\absleftindent}{0mm}
\setlength{\absrightindent}{0mm}
% ========================================================================

% [noitemsep,topsep=0pt,leftmargin=*,labelindent=7.5mm,labelsep=2mm]
%
%\setlist{noitemsep}
%%\setlist[1]{\labelindent=\parindent} % < Usually a good idea
%\setlist{topsep=0pt}
%\setlist{leftmargin=*}
%\setlist{labelindent=7.5mm}
%\setlist{labelsep=2mm}
%\setlist[enumerate]{labelsep=*, leftmargin=1.5pc}
%\setlist[enumerate,1]{label=\arabic*., ref=\arabic*}
%\setlist[enumerate,2]{label=\emph{\alph*}),	ref=\theenumi.\emph{\alph*}}
%\setlist[enumerate,3]{label=\roman*), ref=\theenumii.\roman*}
%\setlist[description]{font=\sffamily\bfseries}



% === DEFINIÇOES DOS PACOTES =============================================
% --- Melhora a aparência da renderização do texto -----------------------
\microtypesetup{activate=true}	% 
% ------------------------------------------------------------------------
% --- Definição da fonte Times -------------------------------------------
% --- Estes três comandos compôem todo o pacote times.sty.
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
\renewcommand{\ttdefault}{pcr}

% Times habilitada - para que todas as opções de classe possam ver as famílias
% de fontes corretas
\normalfont\selectfont
\fontdimen2\font=0.5ex
% ------------------------------------------------------------------------
% --- Definições do bloco a autores (authblk) ----------------------------
\setlength{\affilsep}{5mm}		% Separação entre autor e afiliações
\renewcommand\Authands{, }		% definição da separação do último autor
\renewcommand\Authsep{, }
\renewcommand\Authand{, }
% --- Tamanho de fontes --------------------------------------------------
\renewcommand\Authfont{\fontsize{13}{15.6}\selectfont}
\renewcommand\Affilfont{\itshape\fontsize{8}{9.2}\selectfont}
% ------------------------------------------------------------------------
% --- alterando o aspecto da cor azul ------------------------------------
%\definecolor{blue}{RGB}{41,5,195}
\definecolor{blue}{RGB}{0,0,195}
% ------------------------------------------------------------------------
% --- Defini��es de hifieniza��o -----------------------------------------
\hyphenation{Con-si-de-ra-se}
% ------------------------------------------------------------------------
% --- separação entre colunas de tabelas ---------------------------------
\setlength{\tabcolsep}{0.5mm}
% ------------------------------------------------------------------------



% ------------------------------------------------------------------------
% --- Tamanho da fontes de captions --------------------------------------
\DeclareCaptionFormat{myformat}{\fontsize{8}{9.6}\selectfont#1#2#3}
\captionsetup{format=myformat}
% ------------------------------------------------------------------------
% --- Altera as margens padr�es ------------------------------------------
\setlength{\columnsep}{5mm} 			% Separa��o entre as colunas do texto
\setlrmarginsandblock{20mm}{20mm}{*}		
\setulmarginsandblock{26mm}{27mm}{*}
\setheadfoot{12.5mm}{12.5mm}
\checkandfixthelayout
% ------------------------------------------------------------------------
% --- O tamanho do parágrafo é dado por ----------------------------------
\setlength{\parindent}{0.5cm}
% --- Controle do espa�amento entre um par�grafo e outro -----------------
\setlength{\parskip}{0.0cm}  % tente tamb�m \onelineskip
% ------------------------------------------------------------------------
% --- Espaçamento simples  \SingleSpacing = 1;
\renewcommand{\baselinestretch}{1.15}
% ------------------------------------------------------------------------
% --- Espaçamento entre o título da seção e o texto ----------------------
\setaftersecskip{\baselineskip}
\setaftersubsecskip{\baselineskip}
\setaftersubsubsecskip{\baselineskip}
\setafterparaskip{\baselineskip}
\setbeforesecskip{\baselineskip}
\setbeforesubsecskip{\baselineskip}
\setbeforesubsubsecskip{\baselineskip}
\setbeforeparaskip{\baselineskip}
% ------------------------------------------------------------------------

% ------------------------------------------------------------------------
% --- Ajusta o sublinhado com \uline -------------------------------------
%\renewcommand{\ULdepth}{1.8pt}
% --- Controle de orfas e viúas -----------------------------------------
\widowpenalty=1000
\clubpenalty=1000
% ------------------------------------------------------------------------
% --- Espaço antes de depois de títulos de seções ------------------------
\setbeforesecskip{\baselineskip}
\setaftersecskip{\baselineskip}
% ------------------------------------------------------------------------
% --- Espaço após figuras ------------------------------------------------
\setlength{\abovecaptionskip}{2mm}
% ------------------------------------------------------------------------
\makeatletter
% --- Reduz o tamanho da fonte verbatin
\newcommand{\verbatimfont}[1]{\renewcommand{\verbatim@font}{\ttfamily\scriptsize#1}}
% --- Cria lista de autores para o cabeçário do artigo -------------------
\newcommand*{\authors}{
	\begingroup
	\let\footnote\@gobble			% ignora \footnote
	\let\textsuperscript\@gobble	% ignora protected \textsuperscript
	\expandafter\let\csname textsuperscript \endcsname\@gobble
	\let\Authfont\relax				% N�o utiliza fontes especiais
	\def\Authand{, }				% Separa a lista de autores por ,
	\ifnum\value{authors}<2 		% Apenas o autor principal
	\AB@authlist					% show them all
	\else% 3 or more authors
	% show only the first one followed by "et.~al"
	\expandafter\@firstof@authlist\AB@authlist\@nil\ et.~al.%
	\fi
	\endgroup
}
\def\@firstof@authlist#1\footnote#2\@nil{#1} % skip all from the first footnote
% ------------------------------------------------------------------------
% --- Definicoes de refer�ncias do PDF
\hypersetup{
	%pagebackref=true,
	pdftitle={\@title}, 
	pdfauthor={\@author},
	pdfsubject={Modelo de artigo científico da Revista Brasileira de Criminalística},
	pdfcreator={RBC, LaTeX com abnTeX2},
	pdfkeywords={RBC}{abnt}{latex}{abntex}{abntex2}{artigo científico}, 
	colorlinks=true,       		% false: boxed links; true: colored links
	linkcolor=black,          	% color of internal links
	citecolor=black,        	% color of links to bibliography
	filecolor=magenta,      	% color of file links
	urlcolor=blue,
	bookmarksdepth=4
}
% ------------------------------------------------------------------------
% --- Ajuste do recuo na lista de referências
\renewcommand{\bibname}{\protect\leftline{\uppercase{Refer\^encias Bibliogr\'aficas}} }
\renewenvironment{thebibliography}[1]
{\section*{\bibname}%
	\@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
	\begin{enumerate}[label={[\arabic{enumi}]},leftmargin=0mm, itemindent=*,align=left]
		\@openbib@code
		\sloppy
		\clubpenalty8000
		\@clubpenalty \clubpenalty
		\widowpenalty8000
		\sfcode`\.\@m}
	{\def\@noitemerr
		{\@latex@warning{Empty `thebibliography' environment}}%
	\end{enumerate}}
% ------------------------------------------------------------------------

\renewcommand{\@seccntformat}[1]{ \csname the#1\endcsname .\ }
%\renewcommand{\@title}{\fontsize{17}{20.4}\selectfont\@title\vspace{-1mm}}{}{}
%\renewcommand{\@seccntformat}[1]{ \csname the#1\endcsname\ .\ }
%\renewcommand{\@seccntformat}[1]{ \csname the#1\endcsname\ .\ }

\makeatother 
% ========================================================================

% --- Insere os pontos no fim dos números das seções ---------------------
\renewcommand\thesection{\arabic{section}}
%\renewcommand\thesubsection{\thesection\hspace{2.5mm}\arabic{subsection}.\hspace{-2.5mm}}
%\renewcommand\thesubsubsection{\thesubsection\hspace{2.5mm}\arabic{subsubsection}.\hspace{-2.5mm}}

\verbatimfont{\small}%
\lstset{breaklines,basicstyle=\ttfamily\small,texcl=true}
\endinput

% === FIM DO RBClatex.cls ================================================
% Avengers assemble!
