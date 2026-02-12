% This class is provided for those who want to do their homework in LaTeX typesetting
% Makes it easier to finish your Mathematical or physical assignments elegently in a more professional typeformatting way.
% homework.cls
% Including basic parameters and new commands

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2026/02/12
	Ran Alicia Jing class for homework]
\LoadClass[UTF8, 10pt]{article}

\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage{xparse}
\RequirePackage{geometry}
\RequirePackage{parskip, setspace}
\RequirePackage{kvsetkeys, keyval}

\geometry{
	a4paper,
	left=1.5cm, right=1.5cm, top=1.5cm, bottom=1.5cm
}

\setlength{\parindent}{0em}
\setstretch{1.1}
\setlength{\parskip}{1em}

\newcounter{problem}[section]
\renewcommand\theproblem{\thesection.\arabic{problem}}

\newcommand{\problem}{
	\stepcounter{problem}
	\par
	{\fbox{\textbf{\Large Problem \theproblem}}}
	\hspace{1em}
}

\newtcolorbox{solution}{
	colframe=blue!30,
	fonttitle=\bfseries\color{black},
	title=Solution:,
	halign title=center,
	sidebyside,
	sidebyside align=top,
	sidebyside gap=5mm
}



\newcommand\@username{username}
\newcommand\@course{course}
\newcommand\@setnumber{0}


\define@key{Homework}{username}{\renewcommand\@username{#1}}
\define@key{Homework}{course}{\renewcommand\@course{#1}}
\define@key{Homework}{setnumber}{\renewcommand\@setnumber{#1}}

\newcommand\basicinformation{\kvsetkeys{Homework}}


\setlength{\parindent}{0em}
\setlength{\parskip}{1em}

\newcommand{\@printtitle}{
	\begin{center}
		{\Large\bf\@course: Homework set \@setnumber} \par\vspace{.5em}
		{\@username}
	\end{center}
}

% print header at start of document, right after \begin{document}
\let\@olddocument\document
\def\document{\@olddocument\@printtitle}
	
\endinput



