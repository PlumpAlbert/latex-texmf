% vim:ft=tex:ts=4:sw=0:et
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gost}[2022/04/23]

\LoadClass[a4paper,14pt]{extreport}
\RequirePackage[english,russian]{babel}
\RequirePackage{indentfirst}
\RequirePackage{multirow}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage{microtype}
\RequirePackage{float}
\RequirePackage{hyperref}
\RequirePackage{csquotes}
\RequirePackage{amsmath}
\RequirePackage[
    figurename=Рисунок,
    labelsep=endash,
    tablename=Таблица,
]{caption}
\RequirePackage[
    top=2cm,
    right=2cm,
    bottom=2cm,
    left=2.5cm,
]{geometry}

%% Date formatting
\RequirePackage{datetime}
\renewcommand{\dateseparator}{.}

%% GOST packages
\RequirePackage{gost-headings}
\RequirePackage{gost-listings}
\RequirePackage{gost-lists}
\RequirePackage{gost-table}
\RequirePackage{gost-toc}

%% Disable hyphenation
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

%% Font configuration
\setmainfont{Times New Roman}
\renewcommand{\baselinestretch}{1.5}
\setlength\parindent{1.25cm}

%% URL styling
\renewcommand{\UrlFont}{\normalfont\normalsize\rmfamily}
