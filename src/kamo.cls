% KAMO Corporate Design Approximation for XeLaTeX (2023)
% Version: 2024-01-15
% 
% (c) Fraunhofer 2023
%
% Issues / questions / feedback: Jens Ziehn (jens.ziehn@iosb.fraunhofer.de), Fraunhofer IOSB
%
%
% How to use the package:
%
% 1) Be sure to select XeLaTeX as a compiler (as opposed to the usual PDFLaTeX)
%
% 2) Use \documentclass{kamo}
%
% That should be it.
%
% Fonts must be set separately from the document class, due
% to problems in LaTeX2e parsing parameters with spaces,
% which would be required to conveniently pass
% font names as parameters.
%
% Therefore, fonts are set in the kamofonts.sty package. 
%
% Use it by adding directly after \documentclass{kamo}...:
%
% \usepackage
% [NormalFont={{Fira Sans Light}},
% BoldFont={{Fira Sans Bold}},
% ItalicFont={{Fira Sans Italic}},
% BoldItalicFont={{Fira Sans Italic}}
% ]
% {kamofonts}


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kamo}[2024/01/15]
\LoadClass[fontsize=9pt,twoside, onecolumn,numbers=enddot]{scrartcl}
\RequirePackage [skins]{tcolorbox}
\RequirePackage [labelfont={sf,bf}]{caption}
\RequirePackage {subcaption}
\RequirePackage {enumitem}
\RequirePackage {afterpage}
\RequirePackage {pstricks}
\RequirePackage {linegoal}
\RequirePackage {tikz}
\usetikzlibrary{arrows, positioning, patterns}
\RequirePackage {wallpaper}
\RequirePackage {setspace}
\RequirePackage {multicol}
\RequirePackage {xcolor}
\RequirePackage {ragged2e}
\RequirePackage {qrcode}
\RequirePackage {xstring}
\RequirePackage {calc}

\RequirePackage{soul}


%\RequirePackage[
  %headsepline,
  %headwidth=15cm:2cm,
  %footwidth=head% if footer and header should have the same width
%]{scrlayer-scrpage}% modern version



\RequirePackage{xkeyval}

\makeatletter
\def\kamo@titleimage{}
\def\kamo@fraunhoferlogo{}
\def\kamo@tocdepth{}
\def\kamo@secnumdepth{}
\def\kamo@secfontsize{}




\def\kamo@paperwidth{}
\def\kamo@paperheight{}
\def\kamo@innermargin{}
\def\kamo@outermargin{}
\def\kamo@topmargin{}

\def\kamo@colorsections{}
\def\kamo@colorsubsections{}

\define@key{kamo.cls}{titleimage}[images/mainbg]{\def\kamo@titleimage{#1}}
\define@key{kamo.cls}{fraunhoferlogo}[images/fraunhofer]{\def\kamo@fraunhoferlogo{#1}}
\define@key{kamo.cls}{tocdepth}[3]{\def\kamo@tocdepth{#1}}
\define@key{kamo.cls}{secnumdepth}[3]{\def\kamo@secnumdepth{#1}}
\define@key{kamo.cls}{secfontsize}[24pt]{\def\kamo@secfontsize{#1}}

\define@key{kamo.cls}{secfontsize}[24pt]{\def\kamo@secfontsize{#1}}


\define@key{kamo.cls}{paperwidth}[210mm]{\def\kamo@paperwidth{#1}}
\define@key{kamo.cls}{paperheight}[297mm]{\def\kamo@paperheight{#1}}
\define@key{kamo.cls}{innermargin}[20mm]{\def\kamo@innermargin{#1}}
\define@key{kamo.cls}{outermargin}[40mm]{\def\kamo@outermargin{#1}}
\define@key{kamo.cls}{topmargin}[12mm]{\def\kamo@topmargin{#1}}

\define@key{kamo.cls}{colorsections}[colorKAMODarkBlue]{\def\kamo@colorsections{#1}}
\define@key{kamo.cls}{colorsubsections}[colorKAMOLightGreen]{\def\kamo@colorsubsections{#1}}
\makeatother

\ExecuteOptionsX<kamo.cls>{titleimage,fraunhoferlogo,tocdepth,secnumdepth,secfontsize,paperwidth,paperheight,innermargin,outermargin,topmargin,colorsections,colorsubsections}
\ProcessOptionsX

\def\doctitle{Use \textbackslash{}def\textbackslash{}doctitle\{My Document Title\} to define a title}
\def\docsubtitle{Use \textbackslash{}deftextbackslash{}docsubtitle\{My Document Subtitle\} to define a subtitle (or define it as \{\} to clear it)}
\def\docauthors{}
\def\docprojectlogos{}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Colors and gradients
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{colorFHGGreen}{HTML}{179c7d}
\definecolor{colorPenalty}{rgb}{0.94,0.27,0.05}

\definecolor{colorPRDarkBlue}{HTML}{0F4176}
\definecolor{COLORPRDARKBLUE}{HTML}{0F4176} % ist an einer Stelle nötig wegen Uppercase-Überschriften um Überschrift zu färben.
\definecolor{colorPRBlue}{HTML}{147BBD}

\definecolor{colorFHGDarkBlue}{HTML}{005895}
\definecolor{colorFHGLightBlue}{HTML}{86BBE6}

\definecolor{colorFHGGradA}{HTML}{014A6B}
\definecolor{colorFHGGradB}{HTML}{00779A}
\definecolor{colorFHGGradC1}{HTML}{44BDCB}
\definecolor{colorFHGGradC}{HTML}{4DC7D2}
\definecolor{colorFHGGradC2}{HTML}{44C4CD}
\definecolor{colorFHGGradD}{HTML}{09B2AC}



\definecolor{colorFHGSteelBlue}{HTML}{005b7f}
\definecolor{colorFHGSilverGrey}{HTML}{a6bbc8}
\definecolor{colorFHGOrange}{HTML}{f58220}
\definecolor{colorFHGGraphit}{HTML}{1c3f52}
\definecolor{colorFHGSand}{HTML}{d3c7ae}
\definecolor{colorFHGPetrol}{HTML}{008598}
\definecolor{colorFHGAqua}{HTML}{39c1cd}
\definecolor{colorFHGLime}{HTML}{b2d235}
\definecolor{colorFHGYellow}{HTML}{fdb913}
\definecolor{colorFHGRed}{HTML}{bb0056}
\definecolor{colorFHGWine}{HTML}{7c154d}

\definecolor{colorKAMODeepNight}{HTML}{003169}
\definecolor{colorKAMODarkBlue}{HTML}{0F4176}
\definecolor{colorKAMOBlue}{HTML}{147BBD}
\definecolor{colorKAMOLightBlue}{HTML}{66AED4}
\definecolor{colorKAMOPaleBlue}{HTML}{AACDE0}
\definecolor{colorKAMOGreen}{HTML}{97BF20}
\definecolor{colorKAMOLightGreen}{HTML}{BCD56F}





% From https://tex.stackexchange.com/questions/644598/test-if-current-color-is-black-with-line-breaks
%% At this point the default color is black so save that.
\makeatletter
\edef\BlackColor{\csname\string\color@.\endcsname}


\newcommand{\@CurrentColor}{}% Make sure we are not using an existing macro
\newcommand{\TypsetInColorOnlyIfCurrentColorIsBlack}{%
    %\edef\@CurrentColor{\csname\string\color@.\endcsname}% Get current color
    %\IfStrEq{\@CurrentColor}{\BlackColor}{%
        %{\color{blue}}% current color IS black
    %}{%
        %{}%  current color is NOT black
    %}%
}
\makeatother






%\colorlet{colorSectionHead}{colorFHGSteelBlue}
%\colorlet{colorSubsectionHead}{colorFHGSilverGrey}

\makeatletter
\colorlet{colorSectionHead}{\kamo@colorsections}
\colorlet{colorSubsectionHead}{\kamo@colorsubsections}
\makeatother

%\colorlet{colorSubsectionHead}{colorFHGGreen}
\colorlet{colorPageAccent}{colorFHGSilverGrey!20!white}

\pgfdeclareradialshading{fraunhoferradial}{\pgfpoint{-30bp}{20bp}}{
  color(0bp)=(colorFHGGradA); color(25bp)=(colorFHGGradB); color(37bp)=(colorFHGGradC1);
  color(40bp)=(colorFHGGradC); color(41bp)=(colorFHGGradC2); color(50bp)=(colorFHGGradD);color(100bp)=(colorFHGGradD)
}


%\tikzstyle{fraunhoferblur} = [shading=fraunhoferradial,shading angle=0,opacity=0.95]
\tikzstyle{fraunhoferblur} = [fill overzoom image=images/kamo-blur-512,fill image opacity=0.95]



\DeclareRobustCommand{\hlwhite}[1]{{\sethlcolor{white}\hl{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Page Geometry
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\makeatletter
\newcommand*{\cleartoleftpage}{%
  \clearpage
    \if@twoside
    \ifodd\c@page
      \hbox{}\newpage
      \if@twocolumn
        \hbox{}\newpage
      \fi
    \fi
  \fi
}
\makeatother

%\setlength{\hoffset}{-1in} % In LaTeX, the page contents start at 1in + \hoffset from the left, so setting \hoffset to -1in means margins directly represent the horizontal offset from the page border
%\setlength{\voffset}{-1in} % Same for the vertical border

\makeatletter
\setlength{\paperwidth}{\kamo@paperwidth}
\setlength{\paperheight}{\kamo@paperheight}



\newlength{\innermargin}
\newlength{\outermargin}
\newlength{\bottommargin}
\newlength{\headerwidth}
\newlength{\fullcontentwidth}

\newlength{\texttopoffset}

\setlength{\innermargin}{\kamo@innermargin}
\setlength{\outermargin}{\kamo@outermargin}
\setlength{\topmargin}{\kamo@topmargin-1in} % -1in because LaTeX automatically adds 1in on the top
\setlength{\headheight}{10mm}
\setlength{\headsep}{10mm}

\setlength{\texttopoffset}{1in+\voffset+\topmargin+\headheight+\headsep}

\setlength{\bottommargin}{24mm}
\setlength{\footskip}{10mm}

\setlength{\marginparsep}{5mm}



\setlength\marginparwidth{\outermargin-0.5\innermargin-\marginparsep}


\setlength{\textwidth}{\paperwidth-\innermargin-\outermargin}

\setlength{\fullcontentwidth}{\paperwidth-\innermargin-\innermargin}

\setlength{\textheight}{\paperheight-\topmargin-\headheight-\headsep-\bottommargin-1in}


\setlength{\headerwidth}{\paperwidth-2\innermargin}

%\addtolength\textwidth{-\outermargin}

\setlength{\oddsidemargin}{\innermargin-1in}
\setlength{\evensidemargin}{\outermargin-1in}
\makeatother


\RequirePackage[
  headwidth=\the\headerwidth,
  footwidth=head,% if footer and header should have the same width
	autooneside=false,
]{scrlayer-scrpage}% modern version



\newenvironment{thinmargin}
{%
\Ifthispageodd%
	{%
		\addmargin[0cm]{\innermargin-\outermargin}%
		\minipage{\fullcontentwidth}%
	}%
	{%
		\addmargin[\innermargin-\outermargin]{0cm}%
		\minipage{\fullcontentwidth}%
	}%
}
%
{%
	\endminipage%
	\endaddmargin%
}

\newenvironment{nomargin}
{%
\Ifthispageodd%
	{%
		\begin{addmargin}[-\innermargin]{-\outermargin}%
		\begin{minipage}{\paperwidth}%
	}%
	{%
		\begin{addmargin}[-\outermargin]{-\innermargin}%
		\begin{minipage}{\paperwidth}%
	}%
}%
%
{%
	\end{minipage}%
	\end{addmargin}%
}


\makeatletter

\newcommand\stylesection@noclearpage[2]%
{%

	\begin{thinmargin}%
	\section{#1}\subtitlebrief{#2}%
	\end{thinmargin}%
}

\newcommand\stylesection%
{%
	\@ifstar{\clearpage\stylesection@noclearpage}{\cleartoleftpage\stylesection@noclearpage}%
}



\newcommand\stylesectionMC@noclearpage[3]%
{%
	\sectionmark{#1}% Why this is required here I don't know; but if omitted, sectionmarks lag behind by one section.
	\twocolumn[#3\thinmargin\section{#1}\subtitlebrief{#2}\endthinmargin]{}%
}

\newcommand\stylesectionMC%
{%
	\@ifstar{\stylesectionMC@noclearpage}{\cleartoleftpage\stylesectionMC@noclearpage}%
}



\makeatother

%\newcommand\fhmarginpar[1]{\marginpar{\RaggedRight\setstretch{1.0}\color{colorKAMOBlue}\sffamily\bfseries\emph{#1}}}
\newcommand\fhmarginpar[1]{\marginpar{\Ifthispageodd{\RaggedRight}{\raggedleft}
\setstretch{1.0}
\color{colorKAMOBlue}\narrowfamily#1}}

\newcommand\fhmarginparmax[1]{\marginpar{\Ifthispageodd{\RaggedRight}{\raggedleft}
\setstretch{1.0}
\color{colorKAMOBlue}\sffamily\Large#1}}

\newcommand\fhquot[1]{\setstretch{1.0}\color{colorKAMOBlue}\narrowfamily#1}





















%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Itemize & Enumerate
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
%\renewcommand{\labelitemi}{--\hspace{0.5em}}
%\renewcommand{\labelitemii}{\textbf{--}}

\renewcommand{\labelitemi}{\textcolor{colorKAMOBlue}{\raisebox{0.1em}{\scalebox{0.7}{$\blacksquare$}}}\hspace{0.5em}}
\renewcommand{\labelitemii}{\textcolor{colorKAMOLightBlue}{\raisebox{0.1em}{\scalebox{0.7}{$\blacksquare$}}}\hspace{0.5em}}

\setlength\leftmargini{1.5em}

%\renewcommand\labelenumi{\colorbox{colorPRBlue}{\textcolor{white}\theenumi}}
%\renewcommand\labelenumii{\colorbox{black!40}{\textcolor{white}\theenumii}}

\renewcommand\labelenumi{\normalfont\textcolor{colorKAMOBlue}{\textbf{\theenumi.}}}
\renewcommand\labelenumii{\normalfont\textcolor{colorKAMOLightBlue}{\textbf{\theenumii.}}}
%\renewcommand\labelenumii{\colorbox{black!40}{\textcolor{white}\theenumii}}

\makeatother
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Page layout and design
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%\clearpairofpagestyles
%\ihead{\leftmark}
%\ohead{\rightmark}

\setstretch{1.0} 

\setlength{\columnsep}{0.8cm}

\tolerance=1000


\newcommand{\pagenumbercolor}{colorKAMOLightBlue}

\renewcommand{\thefootnote}{\TypsetInColorOnlyIfCurrentColorIsBlack{}\textbf{{\arabic{footnote}}}}

\makeatletter						
		\long\def\@makefntext#1{%
    \noindent
    \hangindent 9\p@
    \hb@xt@9\p@{\hss\footnotesize\bfseries\@thefnmark~~}#1}
\makeatother

\setkomafont{section}{\normalfont\sffamily\color{colorSectionHead}}
\setkomafont{subsection}{\normalfont\sffamily\Large\color{colorSubsectionHead}}
\setkomafont{subsubsection}{\normalfont\sffamily\color{colorKAMODarkBlue}}

\setkomafont{pagenumber}{\normalfont\small\sffamily\bfseries\color{\pagenumbercolor}}

\newcommand{\tabHeader}[1]{\textcolor{colorKAMODarkBlue}{\textbf{#1}}}

%\newcommand\fraunhoferbar[1]{\tikz{\draw[fill=#1,draw=none] rectangle (0.93cm,0.11cm);}}
%\newcommand\fraunhoferbar[1]{\tikz{\draw[fill=#1,draw=none] rectangle (4cm,0.11cm);}}
\newcommand\fraunhoferbar[1]{\color{#1}{↗}}

%\renewcommand\sectionlinesformat[4]{%
	%\Ifstr{#1}{section}{\vspace{1cm}\vspace{10pt}\fontsize{24pt}{24pt}\selectfont\phantom{#3}\makebox[0pt][r]{#3}\parbox[t]{\linegoal}{#4\newline\raisebox{13pt}{\fraunhoferbar{colorSubsectionHead}}}}{\Ifstr{#1}{subsection}{\vspace{1cm}\textbf{#3 #4}}{\textbf{#3 #4}}}%
%}

\newcommand\categorylabel{}
\def\authorsline{}
\newcommand\printauthorslineonce{\authorsline\gdef\authorsline{}}

%\makeatletter
%\renewcommand\sectionlinesformat[4]{%
	%\Ifstr{#1}{section}{\vspace{1cm}\vspace{10pt}\textbf{\color{colorSubsectionHead}\categorylabel}\\{\captionfamily\printauthorslineonce}\phantom{.}\\\fontsize{\kamo@secfontsize}{\kamo@secfontsize}\selectfont\phantom{#3}\makebox[0pt][r]{#3}\parbox[t]{\linegoal}{\raggedright #4\newline\raisebox{3pt}{\fraunhoferbar{colorSubsectionHead}}}}{\Ifstr{#1}{subsection}{\setstretch{1.0}\textbf{#3#4}}{\textbf{#3#4}}}%
%}
%\makeatother



\makeatletter
\renewcommand\sectionlinesformat[4]{%
	\Ifstr{#1}{section}{
	\thispagestyle{empty}
	%\thispagestyle{plain}
	\vspace{2cm}\vspace{10pt}\textbf{\color{colorSubsectionHead}\categorylabel}\\{\captionfamily\printauthorslineonce}\phantom{.}\\\fontsize{\kamo@secfontsize}{\kamo@secfontsize}\selectfont\phantom{#3}\makebox[0pt][r]{#3}\parbox[t]{\columnwidth}{\raggedright #4\newline\raisebox{3pt}{\fraunhoferbar{colorSubsectionHead}}}}%
	{\Ifstr{#1}{subsection}{\setstretch{1.0}\textbf{#3#4}}{\textbf{#3#4}}}%
}
\makeatother


\RedeclareSectionCommand[
  afterindent=false,
  beforeskip=\baselineskip,
  afterskip=.5\baselineskip]{section}
\RedeclareSectionCommand[
  afterindent=false,
  beforeskip=\baselineskip,
  afterskip=.5\baselineskip]{subsection}
\RedeclareSectionCommand[
  afterindent=false,
  beforeskip=0.9\baselineskip,
  afterskip=.1\baselineskip]{subsubsection}
	

\makeatletter
	\setcounter{tocdepth}{\kamo@tocdepth}
	\setcounter{secnumdepth}{\kamo@secnumdepth} 
\makeatother

\AtBeginDocument{%
  \addtocontents{toc}{\protect\thispagestyle{empty}}%
  \addtocontents{lof}{\protect\thispagestyle{empty}}%
}



\newcommand\subtitlebrief[1]{\textcolor{colorSubsectionHead}{\bfseries\sffamily\large #1 \vskip 1cm}}


\parindent0pt
\parskip5pt				
\pagestyle{scrheadings}
%\automark[section]{section}
%\renewcommand\sectionmark[1]{\markright{\MakeMarkcase {\thesection\hskip .5em\relax#1}}}
%\rohead{\ifnum\expandafter\pdfstrcmp\botmark=0 \rightmark\else\leftmark{} --- \rightmark\fi}




\makeatletter
\def\parsecomma#1,#2\endparsecomma{\def\page@x{#1}\def\page@y{#2}}
\tikzdeclarecoordinatesystem{page}{
    \parsecomma#1\endparsecomma
    \pgfpointanchor{current page}{north east}
    % Save upper right corner
    \pgf@xc=\pgf@x%
    \pgf@yc=\pgf@y%
    % save lower left corner
    \pgfpointanchor{current page}{south west}
    \pgf@xb=\pgf@x%
    \pgf@yb=\pgf@y%
    % Transform to correct placement
    \pgfmathparse{(\pgf@xc-\pgf@xb)*(\page@x-0.5)+(\pgf@xc+\pgf@xb)/2.}
    \expandafter\pgf@x\expandafter=\pgfmathresult pt
    \pgfmathparse{(\pgf@yc-\pgf@yb)*(0.5-\page@y)+(\pgf@yc+\pgf@yb)/2.}
    \expandafter\pgf@y\expandafter=\pgfmathresult pt
}
\makeatother





%
%
%
%
%\makeatletter
%\newcommand\makestyletitlepage
%{%
%\begin{titlepage}
%
%\thispagestyle{empty}
%
%\begin{tikzpicture}[remember picture,overlay,x=\paperwidth,y=\paperheight]
	%\node[anchor=north west,inner sep=0cm] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth]{\kamo@titleimage}};
		%
	%%\fill[white] (page cs:0.07,0.051) rectangle (page cs:0.38,0.13);
	%%\node[anchor=center,inner sep=0cm] at (page cs:0.23,0.09) {\includegraphics[width=0.24\paperwidth]{\kamo@fraunhoferlogo}};
%
	%\pgfsetadditionalshadetransform{\pgftransformxscale{0.9}\pgftransformyscale{1.6}}
	%
	%%\node[anchor=west, inner sep=1cm] at (page cs:0.0,0.65) {
	%
	%%\node
	%%[
	%%anchor=west, opacity=0.95,inner sep=1cm,
	%%fraunhoferblur
	%%] at (page cs:0.0,0.65) {
	%%\hspace{0.35cm}\begin{minipage}{13.5cm}
	%%\RaggedRight
  %%\color{white}\fontsize{28pt}{28pt}\sffamily\selectfont{\doctitle}\\[-8pt]
	%%\tikz{\draw[fill=white]   rectangle(1.4cm,0.2cm);}\\[24pt]
	%%\fontsize{14pt}{14pt}\sffamily\selectfont\textbf{\docsubtitle}
	%%\end{minipage}};
	%
	%\node[anchor=south west,inner sep=0cm] at (page cs:0.07,0.95) {\docprojectlogos};
%\end{tikzpicture}
%
%\end{titlepage}
%\cleardoublepage}



\makeatletter
\newcommand\makestyletitlepage
{%
\begin{titlepage}
\setstretch{1.1}

\thispagestyle{empty}

\begin{tikzpicture}[remember picture,overlay,
x=\paperwidth,y=\paperheight]

	%\node[overlay,anchor=north west,inner sep=0cm] at (page cs:0.0,0.0)
	%{
		%\tikz% [blend group=overlay]
		%{
			%%\node[fill overzoom image=images/kamomagazin-cover5-parts,fill image opacity=1.0,anchor=north west,minimum height=\paperheight,minimum width=\paperwidth] at (page cs:0.0,0.0){...};
			%\node[fill overzoom image=images/kamo-magazin-digital1a,
			%%fill image opacity=0.38,
			%anchor=north west,minimum height=\paperheight,minimum width=\paperwidth] at (page cs:0.0,0.0){};
			%\node[anchor=north west,inner sep=0cm,opacity=0.6] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=2]{images/kamomagazin-cover5-parts-shift2.pdf}};
			%\node[anchor=north west,inner sep=0cm,opacity=0.9] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=1]{images/kamomagazin-cover5-parts-shift2.pdf}};
		%}
	%};


	
	%\node[anchor=north west,inner sep=0cm] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=2]{images/kamomagazin-cover5-parts-shift2.pdf}};
	
	
	
	\node[fill overzoom image=images/titleimage2, anchor=north west,minimum height=\paperheight,minimum width=\paperwidth] at (page cs:0.0,0.0){};
	\node[anchor=north west,inner sep=0cm,opacity=0.9] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=1]{images/kamomagazin-cover5-parts-shift2.pdf}};
	\node[anchor=north west,inner sep=0cm] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=3]{images/kamomagazin-cover5-parts-shift2.pdf}};
	\node[anchor=north west,inner sep=0cm] at (page cs:0.0,0.0) {\includegraphics[width=\paperwidth, page=4]{images/kamomagazin-cover5-parts-shift2.pdf}};
	
	\node[anchor=north west,inner sep=0cm] at (page cs:0.2,0.3) {\scalebox{1.2}{\parbox{12cm}{\RaggedRight\color{white}\narrowfamily\Large Titelthema\newline \Huge\textbf{\llap{→~}Der digitale Zwilling unserer Mobilität:}\newline Wie virtuelle Welten innovative Ideen schneller und sicherer in Verkehr bringen.}}};
	

	\node[anchor=north west,inner sep=0cm] at (page cs:0.1,0.1)
	{
		\parbox{5.2cm}{\RaggedRight\color{white}\bfseries\Large \nameref{sec:paper-bottleneck}\\\large ↗ Seite~\pageref{sec:paper-bottleneck}}
	};
	
	% \node[anchor=north west,inner sep=0cm] at (page cs:0.4,0.1)
	% {
	% 	\parbox{5.2cm}{\RaggedRight\color{white}\bfseries\Large \nameref{sec:paper-rothe}\\\large ↗ Seite~\pageref{sec:paper-rothe}}
	% };
	
	% \node[anchor=north west,inner sep=0cm] at (page cs:0.7,0.1)
	% {
	% 	\parbox{5.2cm}{\RaggedRight\color{white}\bfseries\Large \nameref{sec:dakimo}\\\large ↗ Seite~\pageref{sec:dakimo}}
	% };
	
	% \node[anchor=north west,inner sep=0cm] at (page cs:0.7,0.65)
	% {
	% 	\parbox{5cm}{\RaggedRight\color{white}\bfseries\Large \nameref{sec:aveas}\\\large ↗ Seite~\pageref{sec:aveas}}
	% };


	% \node[anchor=north west,inner sep=0cm] at (page cs:0.7,0.78)
	% {
	% 	\parbox{5cm}{\RaggedRight\color{white}\bfseries\Large \nameref{sec:paper-ml_emissions}\\\large ↗ Seite~\pageref{sec:paper-ml_emissions}}
	% };
	
	\node[anchor=north west,inner sep=0cm] at (page cs:0.7,0.95)
	{
		\parbox{5cm}{\RaggedRight\color{white}\bfseries
		\textbf{ISSN} (Print) 2941-7511 \\
		\textbf{ISSN} (Online) 2941-7554}
	};
	
	
	
	
	\node[anchor=north west,inner sep=0cm] at (page cs:0.7,0.05)
	{
		\parbox{5cm}{\RaggedRight\color{white}\Large Erste Ausgabe \textbf{09/2023}}
	};
	
	\node[anchor=north west,inner sep=0cm] at (page cs:0.1,0.85)
	{
		\parbox{7cm}{\raggedright\color{colorKAMODarkBlue}\Large \textbf{Mobilitätsforschung\newline kompakt und verständlich:} Karlsruher Aktivitäten laufender Forschungsprojekte und aktuelle wissenschaftliche Ergebnisse}
	};


	%\pgfsetadditionalshadetransform{\pgftransformxscale{0.9}\pgftransformyscale{1.6}}

	%\node[anchor=south west,inner sep=0cm] at (page cs:0.07,0.95) {\docprojectlogos};
\end{tikzpicture}

\end{titlepage}
\cleardoublepage}


\newcommand\stylebox[4]{\tikz{
\pgfsetadditionalshadetransform{\pgftransformxscale{0.9}\pgftransformyscale{1.6}}
\node[anchor=west,fraunhoferblur,inner sep=#2, minimum width=#1] at (page cs:0.0,0.65) {
	\parbox{#1-#2-#2}{
	\raggedright
	\setstretch{1.05}
	\setlength{\parskip}{0.5em}
  %\color{white}{→~\bfseries#3}\\
  \color{white}{\setlength{\leftskip}{0.3cm}\vphantom{.}\llap{→~}\textbf{#3}\\}
	%\RaggedRight
	\justifying\narrowfamily#4
	}};
	}}
	
	
\newcommand\imgbox[6]{\tikz{
\pgfsetadditionalshadetransform{\pgftransformxscale{0.9}\pgftransformyscale{1.6}}
	\node[anchor=west,fill overzoom image=#6,inner sep=#2, minimum height=#5, minimum width=#1] (bg) at (page cs:0.0,0.65) {};
	\node[anchor=west,fill stretch image=images/fadekamoblueblack.png,inner sep=#2, minimum height=#5, minimum width=#1] (fade) at (page cs:0.0,0.65) {};
	\node[anchor=south, minimum width=#1, inner sep=#2, align=left] at (bg.south) {%
	\parbox{#1-#2-#2}{
	\raggedright
	\setstretch{1.05}
	\setlength{\parskip}{0.5em}
  %\color{white}{→~\bfseries#3}\\
  \color{white}{\setlength{\leftskip}{0.3cm}\phantom{.}\llap{→~}\textbf{#3}\\}
	%\RaggedRight
	\justifying\narrowfamily#4
	}};
	}}
	
	
	
	
	
\makeatother


\let\newcolumn=\newpage
%\makeatletter
%\renewcommand{\newpage}{\if@firstcolumn\newcolumn\null\fi \newcolumn}
%\makeatother

\newcommand{\newpagetwocolumn}{\if@firstcolumn\newcolumn\null\fi \newcolumn}





\newcommand{\fullpagefig}[5]{
\afterpage{%
\ifx#1l%
\def\tmpanchorside{west}\def\tmppagex{0}\def\tmphspaceleft{1cm}\def\tmphspaceright{0cm}%
\else%
\def\tmpanchorside{east}\def\tmppagex{1}\def\tmphspaceleft{0cm}\def\tmphspaceright{1cm}%
\fi%
%\renewcommand{\pagenumbercolor}{#4}%
\clearpage%
%\newpagetwocolumn%
%\thispagestyle{headings}%
\thispagestyle{empty}%
\tikzstyle{mybox} = [draw=none, fill=white, rectangle, inner sep=8pt, inner ysep=8pt]%
\begin{tikzpicture}[remember picture,overlay,x=\paperwidth,y=\paperheight]%
	\node[anchor=north west,inner sep=0cm] at (page cs:0,0) {%
  %\includegraphics[height=\paperheight]{#3}};
  \includegraphics[width=\paperwidth]{#3}};
	\pgfsetadditionalshadetransform{\pgftransformxscale{0.9}\pgftransformyscale{1.6}}%
	\node[anchor=\tmpanchorside,fraunhoferblur,inner sep=1cm] at (page cs:\tmppagex,#2) {%
	\hspace*{\tmphspaceleft}\begin{minipage}{8cm}%
	%\RaggedRight%
	\justifying
  \color{white}\refstepcounter{figure}{\sffamily\bfseries\figurename~\thefigure:}\label{#5}~%
	\sffamily%
	#4%
	\end{minipage}\hspace*{\tmphspaceright}};%
\end{tikzpicture}
\clearpage
%\newpagetwocolumn%
%\renewcommand{\pagenumbercolor}{colorFHGSilverGrey}
}}


\clearpairofpagestyles % remove the default elements of headings and plain pages
%\ohead{\pagemark}      % page number right aligned in the head of headings pages only
%\cfoot[\pagemark]{}     % page number centered in foot of plain page
%\cohead{\headmark}    % prints the mark for odd pages, selected by \automark
%\cehead{title}         % non variable text on even pages


\lefoot[]{\pagemark}
\rofoot[]{\pagemark}

%\clearscrheadfoot
\automark{part}
\automark{section}
\renewcommand\partmark[1]{\markleft{\MakeMarkcase{#1}}}
\renewcommand\sectionmark[1]{\markright{\MakeMarkcase{#1}}}
\renewcommand\subsectionmark[1]{}

%\rohead{\ifnum\expandafter\pdfstrcmp\botmark=0 \rightmark\else\leftmark{} --- \rightmark\fi}
\rohead{\textcolor{colorKAMOLightBlue}{\rightmark}}
\lehead{\textcolor{colorKAMOLightBlue}{\leftmark}}

%\cfoot{\normalfont\textcolor{colorFHGRed}{\textbf{VERTRAULICH -- Arbeitsstand, nicht zur Einreichung}}}
%\cfoot{\normalfont\textcolor{colorKAMOLightBlue}{KAMO.Magazin \quad 09/2023 \quad \href{https://kamo.one/magazin}{kamo.one/magazin}}}
\cofoot{\normalfont\textcolor{colorKAMOLightBlue}{KAMO.Magazin \quad 05/2024 \quad \href{https://kamo.one/magazin}{kamo.one/magazin}}}






\colorlet{colorSectionHeadOld}{black}
\colorlet{colorSubsectionHeadOld}{black}
\makeatletter
\newcommand\replaceSectionColor[1]{\colorlet{colorSectionHeadOld}{colorSectionHead} \colorlet{colorSectionHead}{#1}}
\newcommand\replaceSubsectionColor[1]{\colorlet{colorSubsectionHeadOld}{colorSubsectionHead} \colorlet{colorSubsectionHead}{#1}}

\newcommand\resetSectionColor{\colorlet{colorSectionHead}{colorSectionHeadOld}}
\newcommand\resetSubsectionColor{\colorlet{colorSubsectionHead}{colorSubsectionHeadOld}}

\newcommand\replaceSSColor[1]{\replaceSectionColor{#1}\replaceSubsectionColor{#1}}
\newcommand\resetSSColor{\resetSectionColor\resetSubsectionColor}


\makeatother


\newcommand\makePeerReviewInfo[3]%
{%
\begin{tikzpicture}[remember picture,overlay, node distance = 0mm]%
\node[anchor=east,fill=colorKAMOPaleBlue!20!white,inner sep=2mm] (mainText) at (page cs:0.9,0.12){%
	\begin{minipage}{14cm}%
	\small%
		\setstretch{1.0}%
	\begin{tabular}{m{10cm}|m{3cm}}%
	\captionfamily In der Rubrik {\narrowfamily [FORSCHUNG.KOMPAKT]} stellen wir aktuelle Forschungsergebnisse übersichtlich und frei zugänglich dar, die eine wissenschaftliche Begutachtung (>>Peer Review<<) durchlaufen haben. Die Originalfassung dieses Artikels wurde veröffentlicht unter {\narrowfamily #1}, und kann unter der nebenstehenden Adresse abgerufen werden.%
	& \RaggedRight \qrcode[height=1.5cm]{#2}\newline\narrowfamily \footnotesize%
	\url{#2} #3%
	\end{tabular}%
	\end{minipage}};%
\node [anchor=north east,fill=colorKAMODarkBlue,inner sep=3mm, left=of mainText.north west,anchor=north east]{\includegraphics[width=1.2cm]{images/kamo-peer-review-icon}};%
\end{tikzpicture}%
}




\newcommand\arrrcol[2]{\arrayrulecolor{#1}#2\arrayrulecolor{black}}




\newcommand\fquot[3]{\figure[#1]%
\centering%
\tabular{rp{4cm}}%
\textcolor{colorKAMOBlue}{\scalebox{5}{\textbf{>>}}}&%
\large\fhquot{#2<<}%
\endtabular%
\ifthenelse{\equal{#3}{}}
{}%empty, do nothing
{\paragraph*{} \raggedleft\textcolor{colorKAMOBlue}{\small #3}}%
\endfigure}



\newcommand\markEndOfContent{\hfill\textcolor{colorKAMODarkBlue}{$\blacksquare$}}



\def\justifying{%
  \rightskip=0pt
  \spaceskip=0pt
  \xspaceskip=0pt
  \relax
}


\endinput
%% End of package