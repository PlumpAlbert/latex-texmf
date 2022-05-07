% vim:ft=tex:ts=4:sw=0
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lstu-report}[2022/01/11 LSTU report LaTeX class]

\LoadClass[a4paper,14pt]{extarticle}
\RequirePackage[
    top=2cm,
    right=2cm,
    bottom=2cm,
    left=2.5cm
]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}
\RequirePackage{hyphenat}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{csquotes}
\RequirePackage{amsmath}
\RequirePackage[
    figurename=Рисунок,
    labelsep=period,
    tablename=Таблица,
]{caption}

\setmainfont{Times New Roman}
\renewcommand{\baselinestretch}{1.5}

\setlist[itemize,enumerate]{
    nolistsep,
    align=left,
    leftmargin=*,
    labelindent=\parindent,
    itemindent=0pt,
    wide
}
\def\labelitemi{--}

\RequirePackage{listings}
\lstset{
	basicstyle=\footnotesize\ttfamily,
	breaklines=true,
	tabsize=2
}
\lstdefinelanguage{JavaScript}{
  morekeywords=[1]{break, continue, delete, else, for, function, if, in,
    new, return, this, typeof, var, void, while, with},
  % Literals, primitive types, and reference types.
  morekeywords=[2]{false, null, true, boolean, number, undefined,
    Array, Boolean, Date, Math, Number, String, Object},
  % Built-ins.
  morekeywords=[3]{eval, parseInt, parseFloat, escape, unescape},
  sensitive,
  morecomment=[s]{/*}{*/},
  morecomment=[l]//,
  morecomment=[s]{/**}{*/}, % JavaDoc style comments
  morestring=[b]',
  morestring=[b]"
}[keywords, comments, strings]

% Variables

% Тип отчета
\def\reporttype#1{\def\@reporttype{#1}}
\reporttype{Лабораторная работа}

% Факультет
\def\faculty#1{\def\@faculty{#1}}
\faculty{автоматизации и информатики}

% Кафедра
\def\department#1{\def\@department{#1}}
\department{автоматизированных систем управления}

% Дисциплина
\def\discipline#1{\def\@discipline{#1}}
\discipline{Название дисциплины}

% Ученая степень
\def\academicTitle#1{\def\@academicTitle{#1}}
\academicTitle{}

% ФИО преподавателя
\def\teacher#1{\def\@teacher{#1}}
\teacher{ФИО преподавателя}

% ФИО студента
\author{Федин М.С.}
% Название отчета
\title{}

% Группа
\def\group#1{\def\@group{#1}}
\group{ПИ-18}

\def\tempempty{}
\renewcommand{\maketitle}{
    \newpage
    \begin{center}
        \textbf{Липецкий государственный технический университет}
        \\[\baselineskip]
        Факультет \@faculty
        
        Кафедра \@department
        \vfill
        \@reporttype
        
        по дисциплине \flqq\@discipline\frqq
        
        \ifx\@title\tempempty
            {}
        \else
            \flqq\@title\frqq
        \fi
    \end{center}
    \vfill
    \begin{table}[!h]
    \begin{tabularx}{\textwidth}{
        l
        l
        >{\centering\arraybackslash}X
        >{\raggedleft\arraybackslash}X
    }
    Студент         &         &               & \@author  \\ \cline{3-3}
                    &         & подпись, дата &           \\
    Группа          & \@group &               &           \\
    Руководитель    &         &               &           \\
    \@academicTitle &         &               & \@teacher \\ \cline{3-3}
                    &         & подпись, дата &  
    \end{tabularx}%
    \end{table}

    \begin{center}
        Липецк, \the\year { г.}
    \end{center}
    \thispagestyle{empty}
    \pagebreak
}

\RequirePackage{titlesec}

\titleformat
   {\section} % <command>
   {\normalfont\normalsize\bfseries} % <format>
   {\thesection} % <label>
   {1ex} % <sep>
   {} % <before-code>
\titlespacing{\section}{1.25cm}{*3}{0pt}

\titleformat
   {\subsection} % <command>
   {\normalfont\normalsize\bfseries} % <format>
   {\thesubsection} % <label>
   {1ex} % <sep>
   {} % <before-code>
\titlespacing{\subsection}{1.25cm}{*3}{0pt}


\titleformat
   {\subsubsection} % <command>
   {\normalfont\normalsize\bfseries} % <format>
   {\thesubsubsection} % <label>
   {1ex} % <sep>
   {} % <before-code>
\titlespacing{\subsubsection}{1.25cm}{*3}{0pt}

\setlength\parindent{1.25cm}
