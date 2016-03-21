%----------------------------------------------------------------------------------------
%	CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[left=1.25cm,right=1.25cm,top=1.25cm,bottom=0.25cm
%hmargin=1.25cm, vmargin=0.75cm
]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links

%----------------------------------------------------------------------------------------
%	COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{000000}%{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{000000}%{6A6A6A} % The color of the large sections
\definecolor{subheadings}{HTML}{000000}%{333333} % The color of subsections and places worked/studied
\definecolor{date}{HTML}{666666} % The color used for the Last Updated text at the top right

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

%\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

%\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well
%
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called

\usepackage{fontspec, xunicode, xltxtra}
\usepackage{xeCJK}%中文字体
\setCJKmainfont[BoldFont=SimHei]{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{SimSun}% 设置缺省中文字体
\setCJKfamilyfont{song}{SimSun}                             %宋体 song
\newcommand{\song}{\CJKfamily{song}}                        % 宋体   (Windows自带simsun.ttf)

%----------------------------------------------------------------------------------------
%	LAST UPDATED COMMAND
%----------------------------------------------------------------------------------------

\usepackage[absolute]{textpos} % Required for positioning the Last Updated text at the top right of the page
\usepackage[UKenglish]{isodate} % Prints the Last Updated date in UK English format

\setlength{\TPHorizModule}{0.01\paperwidth} % Sets the units for the horizontal position used in the \begin{textblock} argument
\setlength{\TPVertModule}{0.01\paperwidth} % Sets the units for the vertical position used in the \begin{textblock} argument
\newcommand{\lastupdated}{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(75,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont % Text styling of the text
Last Updated on \today % Last Updated text
\end{textblock}}

\newcommand{\jobapplied}[1]{ % Create a new command for printing the Last Updated text
\begin{textblock}{25}(2,2) % The position of the Last Updated text on the page (75% of the page across, 2% down)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{11pt}{13pt}\selectfont\bfseries % Text styling of the text
求职意向:#1
\end{textblock}}

%----------------------------------------------------------------------------------------
%	MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3]{ % Defines the command for the main heading
\centering{ % Center the name
\fontsize{40pt}{60pt} % Font size
\song{#1} % First name font
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2 % Last name font
} \\[5pt] % Whitespace between the name and contact information
\centering{ % Center the contact information
\color{headings} % Use the headings color
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3} % Contact information font
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}} % Horizontal rule
\vspace{-5pt} % Reduce whitespace after the rule slightly
}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\section}{0pt}{0pt}{0pt} % Removes the spacing around the main section titles
\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{8pt}} % Defines a command to add a set amount of space after sections and subsections

\titleformat{\section}{ % Customize the large section titles
\color{headings}\scshape\fontspec{SimHei}\fontsize{16pt}{24pt}\selectfont\bfseries
%\raggedright
\uppercase}{}{0em}{}

%\color{headings}\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont\bfseries
%%\raggedright
%\uppercase}{}{0em}{}



\titleformat{\subsection}{ % Customize the subsections and places worked/studied titles
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{ % Used for creating subsections where a description is required on the same line
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

\newcommand{\descript}[1]{ % Used for describing the subsection either on the same line or underneath
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

\newcommand{\location}[1]{ % Used for specifying a duration and/or location under a subsection
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {\quad #1\\} \normalfont}

%----------------------------------------------------------------------------------------
%	SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\newenvironment{tightitemize} % Defines the tightitemize environment which modifies the itemize environment to be more compact
{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
