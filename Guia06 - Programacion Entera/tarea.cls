\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tarea}[2016/12/04 Estilo utilizado para la presentacion de las guias de TP de Investigacion Operativa, UTN FRCU, 2016]

\LoadClass[12pt,a4paper]{article}


\ProcessOptions\relax
\RequirePackage[table]{xcolor}




\RequirePackage[left=25mm, right=25mm, top=25mm, bottom=25mm, nohead]{geometry}
\RequirePackage[spanish,es-nodecimaldot]{babel}
\RequirePackage{tikz}
\usetikzlibrary{babel,automata,positioning,shapes.multipart}
\RequirePackage{epsfig}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tkz-graph}
\RequirePackage{latexsym}
\RequirePackage{amsmath}
\RequirePackage{tabulary}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{graphics}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{tikz}
\RequirePackage[plain]{algorithm}
%\RequirePackage{minted}
\RequirePackage{algpseudocode}
\RequirePackage{fmtcount}% http://ctan.org/pkg/fmtcount
\RequirePackage{eurosym}
\RequirePackage{needspace}
\RequirePackage{bigstrut}
\RequirePackage{colortbl}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{url}
\RequirePackage{listings}
\RequirePackage{tabularx}
\RequirePackage{xparse}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage[section]{placeins} 
\RequirePackage{adjustbox}



\definecolor{gris}{gray}{0.6}

\setlength{\headheight}{15pt} 
\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.3in
\linespread{1.1}

\pagestyle{fancy}
\lhead{\hmwkAuthorName}
\chead{\hmwkTitle}
\rhead{\firstxmark}
\lfoot{\lastxmark}
\cfoot{\thepage}

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}

\graphicspath{ {geo/} }


%
% Create Problem Sections
%
\newcommand{\printNum}[1]{
   \padzeroes[2]{\decimal{#1}}
}
\newcommand{\enterProblemHeader}[1]{
    \nobreak\extramarks{}{Punto \printNum{#1} cont. en pag. siguiente\ldots}\nobreak{}
    \nobreak\extramarks{Punto \printNum{#1} (cont.)}{Punto \printNum{#1} cont. en pag. siguiente\ldots}\nobreak{}
}

\newcommand{\exitProblemHeader}[1]{
    \nobreak\extramarks{Punto \printNum{#1} (cont.)}{Punto \printNum{#1} cont. en pag. siguiente\ldots}\nobreak{}
    \stepcounter{#1}
    \nobreak\extramarks{Punto \printNum{#1}}{}\nobreak{}
}

\setcounter{secnumdepth}{0}
\newcounter{partCounter}
\newcounter{homeworkProblemCounter}
\setcounter{homeworkProblemCounter}{1}
\nobreak\extramarks{Punto \printNum{homeworkProblemCounter}}{}\nobreak{}
\lstset{basicstyle=\scriptsize\tt}



%
% Homework Problem Environment
%
% This environment takes an optional argument. When given, it will adjust the
% problem counter. This is useful for when the problems given for your
% assignment aren't sequential. See the last 3 problems of this template for an
% example.
%
\NewDocumentEnvironment{homeworkProblem}{O{-1} o}{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \IfNoValueTF{#2}
    {\subsection{Punto \printNum{homeworkProblemCounter}}}
    {\subsection{Punto \printNum{homeworkProblemCounter} - #2}}
    \setcounter{partCounter}{1}
    \enterProblemHeader{homeworkProblemCounter}
}{
    \exitProblemHeader{homeworkProblemCounter}
}



\newcommand{\hmwkTitle}{Titulo}
\newcommand{\hmwkDueDate}{01 de Enero de 1900}
\newcommand{\hmwkClass}{Asignatura}
\newcommand{\hmwkClassTime}{Horario}
\newcommand{\hmwkClassInstructor}{Profesor}
\newcommand{\hmwkAuthorName}{\textbf{Autor}}

\newcommand{\caratula}{
    \title{
        \vspace{2in}
        \textbf{\huge \hmwkClass}\\
        \textit{\large \hmwkClassInstructor}\\
        \normalsize\vspace{0.3in}
        {{\LARGE \bfseries \hmwkTitle }} \\
        \vspace{0.1in}
        \small{Fecha de Entrega: \hmwkDueDate}\\
        \vspace{3in}
    }

    \author{\hmwkAuthorName}
    \date{}
    
    \maketitle
    
    \pagebreak
}

\renewcommand{\part}[1]{\textbf{\large Part \Alph{partCounter}}\stepcounter{partCounter}\\}
\renewcommand{\lstlistingname}{Solucion por Software}
%
% Various Helper Commands
%

% Useful for algorithms
\newcommand{\alg}[1]{\textsc{\bfseries \footnotesize #1}}

% For derivatives
\newcommand{\deriv}[1]{\frac{\mathrm{d}}{\mathrm{d}x} (#1)}

% For partial derivatives
\newcommand{\pderiv}[2]{\frac{\partial}{\partial #1} (#2)}

% Integral dx
\newcommand{\dx}{\mathrm{d}x}

% Alias for the Solution section header
\newcommand{\solution}{\textbf{\large Solution}}

% Probability commands: Expectation, Variance, Covariance, Bias
\newcommand{\E}{\mathrm{E}}
\newcommand{\Var}{\mathrm{Var}}
\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\Bias}{\mathrm{Bias}}


\newcommand{\corche}[1]{
	\left[ #1 \right]
}
\newcommand{\paren}[1]{
	\left( #1 \right)
}

%\\corche\{\\frac\{(.*?)\}\{(.*?)\}\}
%\fraccorche{$1}{$2}

\newcommand{\fraccorche}[2] {
	\corche{\frac{#1}{#2}}
}


\newcommand{\insertarImagen}[1]{
	\begin{figure}[H]
		\includegraphics[width=\textwidth]{#1}
		%\includegraphics[width=8cm,height=6cm,keepaspectratio]{#1}
		\centering
	\end{figure}
}

\newcommand{\insertarTabla}[2]{
    \begin{table}[h!]
        \centering
        \caption{#2}\vspace*{+5mm}
        \begin{adjustbox}{max width=\textwidth}
            \input{./xls/#1}
        \end{adjustbox}
         
    \end{table}
    \FloatBarrier
}

\lstset{
  caption=Descriptive Caption Text, 
  basicstyle=\footnotesize, frame=tb,
  xleftmargin=.2\textwidth, xrightmargin=.2\textwidth
}

\newcommand{\insertarCodigo}[2]{
    \lstinputlisting[
        linewidth=18cm,
        breaklines=false,
        frame=shadowbox,
        rulesepcolor=\color{blue},
        framexleftmargin=10mm,
        xleftmargin=.05\textwidth,
        basicstyle=\footnotesize\tt,
        float=th!,
        caption=#2,
        label=zebra]{
            ./txt/#1
    }
        %\FloatBarrier
}



\newcommand{\ecuacion}[2]{
	\begin{equation} 
	 #1
	 
	 \end{equation}
}

\newcommand{\llavesR}[2]{
	\begin{align*}
  		\left.
  		\begin{aligned}
  			#1
		\end{aligned}
		\right\} #2 
	\end{align*}
}

\newcommand{\llavesL}[2]{
	\begin{align*}
		\begin{cases}
    		#1
  		\end{cases} #2 
	\end{align*}
}

\newcommand{\zero}{
    $\O$
}

\newcommand{\importarArchivo}[1]{
    \input{./tex/#1}
}


\newcommand{\RN}[1]{%
  \textup{\uppercase\expandafter{\romannumeral#1}}%
}





\tikzset{
    >=stealth,
    parent node/.style={
        rectangle split,
        rectangle split parts=2,
        align=center,
        text width=2.5cm,
        draw,
        node distance=1cm and 1cm
    }
}

\newcommand{\insertarBranchAndBound}[3]{
    \newcommand{\flechaDivision}{
        --++(0,-1)-| 
    }
    \begin{figure}[H] 
        \centering
        \begin{adjustbox}{max width=\textwidth, max height=13.5cm}
            \begin{tikzpicture}
                #1
                \foreach \from/\arrrow/\to/\texa/\texb/\text in {
                    #2
                }{
                    \draw[->]\from \arrrow \to  node  [above=0.5cm,\texa,\texb] {$\text$};
                }
            \end{tikzpicture}
        \end{adjustbox}
        \caption{#3}
    \end{figure}
}


