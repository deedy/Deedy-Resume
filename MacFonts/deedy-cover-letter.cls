% Intro Options
\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=2.54cm, vmargin=2.54cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
% \usepackage[UKenglish]{babel}
% \usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

\newcommand{\leftdetails}[1]{\begin{textblock}{60}(170,5)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
#1
\end{textblock}}


% Name command
\newcommand{\namesection}[3]{
    \centering{
        \sffamily
        \fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{10cm}\selectfont #1 
        \fontspec{Helvetica Neue Light}\selectfont #2
    } \\
    \vspace{5pt}
    \centering{ \color{headings}\fontspec{Heiti TC Medium}\fontsize{11pt}{14pt}\selectfont #3}
    \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.0pt}}
    \vspace{0pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

\newcommand{\companyname}[1]{\raggedright\fontspec{Calibri Bold}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}

\newcommand{\companyaddress}[1]{\raggedright\fontspec{Calibri}\fontsize{12pt}{14pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\currentdate}[1]{\raggedleft\fontspec{Calibri}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}

% Letter content command
\newcommand{\lettercontent}[1]{\raggedright\fontspec{Calibri}\fontsize{12pt}{14pt}\selectfont {#1 \\}\mbox{}\\ \normalfont}

\newcommand{\closing}[1]{\raggedright\fontspec{Calibri}\fontsize{12pt}{14pt}\selectfont {#1 \\}\mbox{}\\\mbox{}\\ \normalfont}

\newcommand{\signature}[1]{\raggedright\fontspec{Calibri}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}