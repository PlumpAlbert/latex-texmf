% vim:ft=tex:ts=4:sw=0:et
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lstu-diploma}[2022/04/10 LSTU diploma LaTeX class]

\LoadClass[a4paper,14pt]{extreport}
\RequirePackage[
    top=2cm,
    right=2cm,
    bottom=2cm,
    left=2.5cm,
]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[english,russian]{babel}
\RequirePackage{hyphenat}
\RequirePackage{indentfirst}
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
    labelsep=endash,
    tablename=Таблица,
]{caption}

\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000


% Configure tables
\RequirePackage{tabularx}
\newcolumntype{R}{>{\raggedleft\arraybackslash}X}
\newcolumntype{L}{>{\raggedright\arraybackslash}X}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\RequirePackage{tabularray}
\NewColumnType{R}{X[r]}
\NewColumnType{L}{X[l]}
\NewColumnType{C}{X[c]}

\DefTblrTemplate{contfoot-text}{default}{}
% Разделитель названия таблицы
\DefTblrTemplate{caption-sep}{default}{\space--\space}
\DefTblrTemplate{caption}{default}{
    \raggedright
    \UseTblrTemplate{caption-tag}{default}
    \UseTblrTemplate{caption-sep}{default}
    \UseTblrTemplate{caption-text}{default}
}
% Продолжение таблицы
\DefTblrTemplate{middlehead}{default}{\textit{
    Продолжение таблицы \thetable
}}
% Окончание таблицы
\DefTblrTemplate{lasthead}{default}{\textit{
    Окончание таблицы \thetable
}}
\DefTblrTemplate{lastfoot}{default}{\hline}

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
% Formatting of nested enumerate list
\renewcommand{\labelenumii}{\theenumii}
\renewcommand{\theenumii}{\arabic{enumii})}

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

% Факультет
\def\faculty#1{\def\@faculty{#1}}
\faculty{автоматизации и информатики}

% Кафедра
\def\department#1{\def\@department{#1}}
\department{автоматизированных систем управления}

% Ученая степень
\def\academicTitle#1{\def\@academicTitle{#1}}
\academicTitle{}

% ФИО преподавателя
\def\teacher#1{\def\@teacher{#1}}
\teacher{ФИО}

% ФИО студента
\author{Федин М.С.}
% Название отчета
\title{}

% Название направления
\def\studyWay#1{\def\@studyWay{#1}}
\studyWay{09.03.04 Программная инженерия}

% Тип программы
\def\programType#1{\def\@programType{#1}}
\programType{академическая}

% Профиль обучения
\def\profile#1{\def\@profile{#1}}
\profile{Разработка программно-информационных систем}

% Группа
\def\group#1{\def\@group{#1}}
\group{ПИ-18}

\def\tempempty{}
\renewcommand{\maketitle}{
    \newpage
    \thispagestyle{empty}
    \begin{center}
        \textbf{Липецкий государственный технический университет}

        Факультет \@faculty

        Кафедра \@department
        \\[\baselineskip]
        \uppercase{Выпускная Квалификационная Работа Бакалавра}

        по направлению \@studyWay

        тип программы \@programType

        профиль \textquote{\@profile}
        \\[\baselineskip]
        \ifx\@title\tempempty
            {}
        \else
            \@title
        \fi
        \\[\baselineskip]
    \end{center}
    \vfill
    \begin{table}[H]
        \begin{tabularx}{\textwidth}{lCR}
        Студент         &               & \@author  \\ \cline{2-2}
        Группа \@group  & подпись, дата &           \\
        Руководитель    &               &           \\
        \@academicTitle &               & \@teacher \\ \cline{2-2}
                        & подпись, дата &           \\
        Консультант по  &               &           \\
        программному обеспечению        &     &     \\
        уч. звание      &               & ФИО       \\ \cline{2-2}
                        & подпись, дата &           \\
        Нормоконтроль   &               & ФИО       \\ \cline{2-2}
                        & подпись, дата &           \\
        Заведующий кафедрой             &     &     \\
        канд. техн. наук, доцент   &    & Алексеев В.А. \\ \cline{2-2}
                        & подпись, дата &
        \end{tabularx}%
    \end{table}
    \begin{center}
        Липецк \the\year { г.}
    \end{center}
\pagebreak
}

\RequirePackage{titlesec}
\setlength\parindent{1.25cm}

\titleformat
   {\chapter} % <command>
   [hang]
   {\normalfont\normalsize\bfseries\filright} % <format>
   {\thechapter} % <label>
   {1ex} % <sep>
   {} % <before-code>
\titlespacing{\chapter}{1.25cm}{*3}{0pt}

\titleformat
   {\section} % <command>
   [block]
   {\normalfont\normalsize} % <format>
   {} % <label>
   {1.25cm} % <sep>
   {\thesection\hspace{1ex}} % <before-code>
\titlespacing*{\section}{0cm}{*3}{0pt}

\titleformat
   {\subsection} % <command>
   [block]
   {\normalfont\normalsize} % <format>
   {} % <label>
   {1.25cm} % <sep>
   {\thesubsection\hspace{1ex}} % <before-code>
\titlespacing*{\subsection}{0cm}{*3}{0pt}


\titleformat
   {\subsubsection} % <command>
   [block]
   {\normalfont\normalsize} % <format>
   {} % <label>
   {1.25cm} % <sep>
   {\thesubsubsection\hspace{1ex}} % <before-code>
\titlespacing*{\subsubsection}{0cm}{*3}{0pt}

