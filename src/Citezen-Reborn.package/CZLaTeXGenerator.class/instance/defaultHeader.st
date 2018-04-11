configuration
defaultHeader
	^ '\documentclass{article}
\usepackage{times}

\newcommand{\czauthors}[1]{#1}
\newcommand{\cztitle}[1]{\emph{``#1''''}}
\newcommand{\czjournal}[1]{#1}
\newcommand{\czbooktitle}[1]{#1}

\title{{\bf Prof. Dr. St\''ephane Ducasse}\\[0.5cm]
{\bf }}
\author{}
\begin{document}
\maketitle


	' withUnixLineEndings