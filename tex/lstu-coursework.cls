\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lstu-coursework}[2020/03/20 LSTU CourseWork]

\LoadClass[14pt,a4paper]{extarticle}
\RequirePackage{indentfirst}
\RequirePackage{extsizes}
\RequirePackage{fontspec}
\RequirePackage[english,russian]{babel}
\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage{hyperref}
\RequirePackage{float}
\RequirePackage[
    figurename=Рисунок,
    labelsep=endash,
    tablename=Таблица,
]{caption}
\RequirePackage[
left=25.00mm,
right=2.00cm,
top=2.00cm,
bottom=2.00cm]{geometry}
\RequirePackage{csquotes}
\RequirePackage{amsmath}

\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

%% Configure tables
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

%% Lists
\RequirePackage{enumitem}
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
\teacher{}

% ФИО студента
\author{Федин М.С.}

\setmainfont{Times New Roman}
\setmonofont{monospaced}
\linespread{1.5}
\setlength\parindent{1.25cm}
\setlength\itemsep{0em}
\RequirePackage{titlesec}

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


% Переопределение титульного листа
\renewcommand*{\maketitle}{
	\begin{titlepage}
		\baselineskip=21pt
		\begin{center}
			\textbf{Липецкий Государственный Технический Университет}\\
			Факультет \@faculty\\
			Кафедра \@department\\
			\vfill
			КУРСОВАЯ РАБОТА\\
			по курсу \textquote{\@discipline}\\
			\ifx\@title\empty
			\else
			\textquote{\@title}
			\fi
			\vfill
			Студент \hfill \@author\\
			\begin{flushleft}
				Группа ПИ-18
			\end{flushleft}
			\begin{flushleft}
				Руководитель
			\end{flushleft}
			\@academicTitle \hfill \@teacher\\
			\mbox{}\\
			Липецк \the\year{ г}
		\end{center}
	\end{titlepage}
}
