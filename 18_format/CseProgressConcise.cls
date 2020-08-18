\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csethesis}[2007/04/09]
%\PassOptionsToClass{12pt}{report}
\PassOptionsToClass{twoside,a4paper,10pt}{report}

\LoadClass{report}
%=============================================================================
%Theorem Like Environments
%=============================================================================
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{acknowledgement}[theorem]{Acknowledgement}
\newtheorem{axiom}[theorem]{Axiom}
\newtheorem{case}[theorem]{Case}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{conclusion}[theorem]{Conclusion}
\newtheorem{condition}[theorem]{Condition}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{corollary}{Corollary}[chapter]
\newtheorem{criterion}[theorem]{Criterion}
\newtheorem{definition}{Definition}[chapter]
\newtheorem{example}{Example}[chapter]
\newtheorem{exercise}[theorem]{Exercise}
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{notation}[theorem]{Notation}

\newtheorem{problem}{Problem}[chapter]
\newtheorem{proposition}{Proposition}[chapter]
\newtheorem{remark}[theorem]{Remark}
\newtheorem{solution}[theorem]{Solution}
\newtheorem{summary}[theorem]{Summary}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Redefined in Util/newcommands.tex
%\newcommand{\etal}{\emph{et.al.}}
%\newcommand{\subref}[1]{Eq.~(\ref{#1})}
%\newcommand{\term}[1]{\emph{``#1''}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\pushleft}[1]{\ifmeasuring@#1\else\omit$\displaystyle#1$\hfill\fi\ignorespaces}
%%%%  Line spacing
\DeclareOption{spaced}{\renewcommand{\baselinestretch}{1.8}}
%\newenvironment{proof}[1][Proof]{\textbf{#1.} }{\ \rule{0.5em}{0.5em}}
%------------------ Defining the most common environments ---------------
\def\QED{\ensuremath{{\square}}}
\def\markatright#1{\leavevmode\unskip\nobreak\quad\hspace*{\fill}{#1}}
\newenvironment{proof}
  {\begin{trivlist}\item[\hskip\labelsep{\bf Proof:}]}
    {\markatright{\QED}\end{trivlist}}

%------------------------------------------------------------------------

\setlength{\textheight}{10.0in}
\setlength{\textwidth}{7.500in}
\setlength{\topmargin}{-0.900in}
\setlength{\oddsidemargin}{-0.125in}
\setlength{\evensidemargin}{-0.375in}


\newtoks\phdtitle
\newtoks\name
\newtoks\rollno
\newtoks\email
\newtoks\guide

\newif\if@fancyhdr
\DeclareOption{style/fancyhdr}{\@fancyhdrtrue}
\DeclareOption{plainhdr}{\@fancyhdrfalse}

\ExecuteOptions{plainhdr}
\ProcessOptions
%============================================================================
% Declaration
%===========================================================================
\newenvironment{Declaration}
{\pagestyle{empty}
%\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Huge \bfseries Declaration}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}
%\end{alwayssingle}
}

%============================================================================
% Certificate
%===========================================================================
\newenvironment{Certificate}
{\pagestyle{empty}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Huge \bfseries Certificate}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}
%===========================================================================
%Acknowledgement
%=============================================================================
\newenvironment{acknowledgements}
{\pagestyle{empty}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Huge \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}
%=============================================================================
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

% GLOSSARY
%=============================================================================
% The glossary environment must do the following:
% - produce the table of contents entry for the glossary
% - start a new page with GLOSSARY centered two inches from the top
%=============================================================================
\def\glossary{
  \chapter*{Glossary}
  \addcontentsline{toc}{chapter}{Glossary}}
\def\endglossary{\par\newpage}

%=============================================================================
% NOMENCLATURE
%=============================================================================
% The nomenclature environment must do the following:
% - produce the table of contents entry for the nomenclature section
% - start a new page with NOMENCLATURE centered two inches from the top
%=============================================================================
\def\nomenclature{ 
  \chapter*{Nomenclature}
  \addcontentsline{toc}{chapter}{Nomenclature}
  \@mkboth{\MakeUppercase {Nomenclature}}{\MakeUppercase {Nomenclature}}%
   \@starttoc{nom}}
\def\endnomenclature{\par\newpage}
%=============================================================================
% INDEXING (To be used at the end of the thesis)
%=============================================================================
% Sample
%In this example several keywords\index{keywords} will be used which are important and deserve to appear in the Index\index{Index}. Terms like generate\index{generate} and some\index{others} will also show up. 

% Add \printindex at the end of the document
%=============================================================================
\def\listofsymbols{
  \chapter*{List of Symbols}
  \addcontentsline{toc}{chapter}{List of Symbols}
  \@mkboth{ \MakeUppercase {List of Symbols}}{\MakeUppercase {List of Symbols}}%
   \@starttoc{los}}
\def\endlistofsymbols{\par\newpage}

%\printindex
%=============================================================================
% LIST OF SYMBOLS
%=============================================================================
% The list of symbols environment must do the following:
% - produce the table of contents entry for the list of symbols section
% - start a new page with LIST OF SYMBOLS centered two inches from the top
%=============================================================================
\def\listofsymbols{
  \chapter*{List of Symbols}
  \addcontentsline{toc}{chapter}{List of Symbols}
  \@mkboth{ \MakeUppercase {List of Symbols}}{\MakeUppercase {List of Symbols}}%
   \@starttoc{los}}
\def\endlistofsymbols{\par\newpage}

%=============================================================================
% VITA
%=============================================================================
% The vita environment must do the following:
% - produce a separator page with the word vita centered
% - produce the table of contents entry for the vita
% - start a new page with VITA centered two inches from the top
%=============================================================================
\def\vita{
  \chapter*{About The Author}
  \addcontentsline{toc}{chapter}{Bio}}
\def\endvita{\par\newpage}

%=============================================================================
% ACKNOWLEDGMENTS
%=============================================================================
% The acknowledgments environment must do the following:
% - start a new page with ACKNOWLEDGMENTS centered two inches from the top
%=============================================================================
\def\acknowledgments{
  \chapter*{Acknowledgments}
  \thispagestyle{empty}
  \doublespace}
\def\endacknowledgments{%
  \vskip 5cm
  \noindent{\large Date: \rule{4cm}{1sp}\hfill\@author\rule{1cm}{0pt}}
  \par\newpage}

%=============================================================================
% \@makecaption{NUMBER}{TEXT} : Macro to make a figure or table caption.
%      NUMBER : Figure or table number--e.g., 'Figure 3.2'
%      TEXT   : The caption text.
%  Macro should be called inside a \parbox of right width, with \normalsize.
%=============================================================================
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    \singlespace#1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%=============================================================================
% LIST OF FIGURES; LIST OF TABLES
%  These macros from report.cls have been modified to add entry in the
%  Contents table
%=============================================================================
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
    \addcontentsline{toc}{chapter}{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
    \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
%=============================================================================
% These commands can be used in the thesis to switch between single
% and double spacing.  This is needed, for instance, in the abstract.
%=============================================================================
\newcommand{\oneskip}{1.0}
\newcommand{\twoskip}{1.5}
% \newcommand{\singlespace}
%   {\renewcommand{\baselinestretch}{\oneskip}\Large\normalsize}
% \newcommand{\doublespace}
%   {\renewcommand{\baselinestretch}{\twoskip}\Large\normalsize}

%=============================================================================
% Finally set the various lengths/margins as required by IITG format
% Check out LaTeX Companion for more details.
%=============================================================================
%===== page layout defined by 4 dimensions, others are calculated from these
% Define the side margins for a right-side page

\newdimen \insidemargin
\newdimen \outsidemargin
\newdimen \abovemargin
\newdimen \belowmargin

\insidemargin = 2.0cm       % Actual space
\outsidemargin =2.0cm

% Above margin is space above the header
% Below margin is space below footer
\abovemargin =0.95cm        % Actual space
\belowmargin =1cm

%=====

% % Paper height & width (A4 paper) - set by a4paper option to report
% %\setlength{\paperheight}{297mm}
% %\setlength{\paperwidth}{210mm}
% % total text area: height & width
% \setlength{\textheight}{210mm}
% \setlength{\textwidth}{150mm}
% 
% \setlength{\headheight}{5mm}
% \setlength{\headsep}{12mm}
% \setlength{\topmargin}{30mm}  

% Leave more space for the header (originally 12pt)
\headheight =12pt

% Other parameters retain their default values (values for 12pt documents)
% \headsep - space from bottom of header to top of text (25pt)
% \footskip - distance from the bottom of text to bottom of footer (30pt)

% The rest of the dimensions are calculated from the above values
% (compensation for TeX 1in margin offsets is done here)
\textwidth = \paperwidth
  \advance\textwidth by -\insidemargin
  \advance\textwidth by -\outsidemargin
  \textheight = 11.4in 
  \advance \textheight by -\abovemargin
  \advance \textheight by -\headheight
  \advance \textheight by -\headsep
  \advance \textheight by -\belowmargin
  \advance \textheight by -\footskip
  \topmargin = \abovemargin
  \advance \topmargin by -1in

\oddsidemargin = \insidemargin
  \advance\oddsidemargin by -1in
\if@twoside
  \evensidemargin = \outsidemargin
    \advance\evensidemargin by -1in
\else
  \evensidemargin = \oddsidemargin
\fi
%========= Page line spacing. Comment to get single spacing
%\doublespace

% \pagestyle{fancy}
% \renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
% \renewcommand{\sectionmark}[1]{\markboth{\thesection\ #1}{\thesection\ #1}}
% \fancyhf{}
%\fancyhead[RO]{\bfseries\rightmark}
%\fancyhead[LE]{\bfseries\leftmark}
%\fancyfoot[C]{\thepage}
% \renewcommand{\headrulewidth}{0.5pt}
% \renewcommand{\footrulewidth}{0pt}
% \addtolength{\headheight}{0.5pt}
% \fancypagestyle{plain}{
%   \fancyhead{}
%   \renewcommand{\headrulewidth}{0pt}
% }




%========= Redefine \cleardoublepage to use pagestyle plain
% Notes:
%  \include xxx
%      expands to \clearpage \input xxx.tex \clearpage
%  \chapter
%      expands to \clearpage  OR \cleardoublepage
%                 \thispagestyle{plain}
%                  ...
% \cleardoublepage is modified to output an empty page with pagestyle plain
% for headings and footers.
\renewcommand{\cleardoublepage}{%
  \clearpage
  \if@twoside
    \ifodd\c@page
    \else
      \hbox{}\thispagestyle{plain}\newpage
      \if@twocolumn \hbox{}\newpage \fi
    \fi
  \fi}
%========= Change the name from "Bibliography" to "References"
 \renewcommand\bibname{References}
\let\SV@thebibliography\thebibliography
\renewcommand{\thebibliography}[1]{%
  \if@twoside
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addcontentsline{toc}{chapter}{\bibname}
  \SV@thebibliography{#1}}

%========= Dummy definitions if datestamp package is not loaded
\ifx\datestampbox\@undefined
  \let\datestampbox=\relax
  \def\rcs #1{}
\fi

%========= Fancy headings setup
% Single-sided printing
%   header:   3.2 Section        5
%             --------------------
% Double-sided printing
%   header:   4            Chapter
%   even      --------------------
%
%   header:   3.2 Section        5
%   odd       --------------------
%
\RequirePackage[percent]{overpic}
\if@fancyhdr
  \RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \if@twoside
    \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
    \renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
    \fancyhf{}          % clear all fields
    \fancyhead[LE,RO]{\bfseries \thepage}
    \fancyhead[LO]{\bfseries \nouppercase{\rightmark}}
    \fancyhead[RE]{\bfseries \nouppercase{\leftmark}}
    \fancyfoot[LE,RO]{\thepage}
    \fancyfoot[LO,CE]{Chapter \thechapter}
    \fancyfoot[CO,RE]{Author Name}
    %\fancyfoot[LO,RE]{\datestampbox}
  \else
    \renewcommand{\chaptermark}[1]{\markright{\thechapter\ #1}}
    \renewcommand{\sectionmark}[1]{}
    \fancyhf{}          % clear all fields
    \fancyhead[RE,RO]{\bfseries \thepage}
    \fancyhead[LE,LO]{\bfseries \nouppercase{\rightmark}}
    %\fancyfoot[LO,RE]{\datestampbox}
  \fi

  \renewcommand{\footrulewidth}{0pt}
  \renewcommand{\headrulewidth}{0.4pt}
  \def\headrule{{\headrulehook
                 \hrule height\headrulewidth width\headwidth
                 \vskip-\headrulewidth}}
  \def\headrulehook{}
% Notes:
%  - \nouppercase is to knock out the hardwired uppercase in
%    contents and bibliography
%  - \headrulehook can used for colour, e.g. \def\headrulehook{color{red}}

% Redefine plain style (used by \chapter) to just a page number at the top
  \fancypagestyle{plain}{%
    \fancyhf{}          % clear all fields
    \fancyhead[LE,RO]{\bfseries \thepage}%
    \fancyfoot[LO,RE]{\datestampbox}}

\fi

%================== title page

% Date set as "August 1996"
\def\Month{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\date{\Month\ \number\year}

% Organization
\newcommand\organization[1]{\def\@organization{#1}}
\def\@organization{\@latex@warning@no@line{No \noexpand\organization given}}

% Note
\newcommand\note[1]{\def\@note{#1}}
\def\@note{\@latex@warning@no@line{No \noexpand\note given}}

%============================================================================
% Cover Page
%===========================================================================
% \newcommand\maketitle{\begin{coverpage}%
% \let\footnotesize\small
%   \let\footnoterule\relax
%   \let \footnote \thanks
% 
% % Reset the page style to empty
%   \pagestyle{empty}
% 
% % -- vertical space --
% % Title with \LARGE \bfseries
% % Author with \Large \itshape
% % Organization with \large
% % Date with \large
% % -- vertical space --
% % Note
% 
%   \begin{center}%
%     \null\vfil \vskip 60\p@ % vertical centering (extra 60pt at top)
%     {\LARGE \bfseries \@title \par}%
%     \vskip 10ex%
%    {\Large \itshape \@author}%
%     \vskip 3ex%
%     {\large
%      \lineskip 0.5em%
%      \begin{tabular}[t]{c}%
%        \@organization
%      \end{tabular}\par}%
%     \vskip 3ex%
%     {\large \@date \par}%
%     \vskip 5em%
%     \vfil\null          % vertical centering
%     \@note
%   \end{center}\par
%   \@thanks
% 
% % Reset macros
%   \setcounter{footnote}{0}%
%   \end{coverpage}%
%   }

% Redefine the \maketitle macro (separate page) with new layout
% This is a simplified version of the LaTeX \maketitle macro, since we
% need only worry about a single author and a single institution.
%============================================================================
% Title Page
%===========================================================================
\renewcommand\maketitle{\begin{titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks

% Reset the page style to empty
  \pagestyle{empty}

% -- vertical space --
% Title with \LARGE \bfseries
% Author with \Large \itshape
% Organization with \large
% Date with \large
% -- vertical space --
% Note

  \begin{center}%
    \null\vfil \vskip 200\p@ % vertical centering (extra 75pt at top)
    {\LARGE \bfseries \@title \par}%
    \vskip 20ex%
   {\Large \itshape \@author}%
    \vskip 6ex%
    {\large
     \lineskip 1em%
     \begin{tabular}[t]{c}%
       \@organization
     \end{tabular}\par}%
    \vskip 5ex%
    {\large \@date \par}%
    \vskip 5em%
    \vfil\null          % vertical centering
    \@note
  \end{center}\par
  \@thanks

  \end{titlepage}%

% Reset macros
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}

%================== general changes
% Smaller section and subsection heads, ragged right
% [classes.dtx]
\def\veryraggedright{\advance\rightskip by 0pt plus 1fil\relax}
\renewcommand\section{\@startsection {section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\normalfont\large\bfseries\veryraggedright}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
    {-3.25ex\@plus -1ex \@minus -.2ex}%
    {1.5ex \@plus .2ex}%
    {\normalfont\bfseries\veryraggedright}}

% Placement of figures and tables htbp instead of tbp
% Figure name, Table name in bold
% [classes.dtx]
\renewcommand\fps@figure{htbp}
\renewcommand\fps@table{htbp}
\renewcommand\fnum@figure{{\reset@font\bfseries\figurename~\thefigure}}
\renewcommand\fnum@table{{\reset@font\bfseries\tablename~\thetable}}


% Less space between the number and the section title (1em -> 0.5em)
% [ltsect.dtx]
\renewcommand\@seccntformat[1]{\csname the#1\endcsname\hskip 0.5em}

% Float captions
% - Prove a \Tcaption for "top" captions
% - Remove ":" separating the number from the caption
% - Typeset the caption in \small
% - Set the caption in a narrower (80%) parbox
% [classes.dtx]
% Note: use "\hbox to" rather than "\hb@xt@" for older latex2e's
\def\captiontextfraction{0.8}
\def\captionfontsize{\small}
\newdimen\aboveTcaptionskip \aboveTcaptionskip=\belowcaptionskip
\newdimen\belowTcaptionskip \belowTcaptionskip=0.5\abovecaptionskip
\def\Tcaption{%
  \abovecaptionskip=\aboveTcaptionskip
  \belowcaptionskip=\belowTcaptionskip
  \caption}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\captionfontsize #1\quad #2}%
  \ifdim \wd\@tempboxa >\captiontextfraction\hsize
    \hbox to \hsize{\hfil%
     \parbox{\captiontextfraction\hsize}{\captionfontsize #1\quad #2}%
    \hfil}%
  \else
    \global \@minipagefalse
    \hbox to \hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% Figure name becomes "Fig." (was "Figure")
\renewcommand\figurename{Fig.}
%==============================
% DEDICATION
%=============================================================================
% The dedication environment must do the following:
% - start a new page
% - center the text vertically
% - include the text in a center environment
%=============================================================================
\def\dedication{
  \newpage
  \thispagestyle{empty}    % No page number
  \setcounter{page}{0}
  % \addtocounter{page}{-1}
  \chapter*{}            % Required for \vfill to work
  \thispagestyle{empty}    % No page number
  %\null\vfil
  \begin{center}}
\def\enddedication{\end{center}\par\newpage}
%=============================================================================
\RequirePackage{xcolor}
\RequirePackage{eso-pic}
%\definecolor{covercolor}{rgb}{0.0, 0.13, 0.28}
\definecolor{coverfont}{RGB}{211, 211, 211}  %RGB(212, 161, 56) #d4a138 rgb{0.83, 0.69, 0.22}
\definecolor{covercolor}{RGB}{0, 51, 17}   %{RGB}{0, 102, 34} #006622 rgb{0.0, 0.25, 0.42}
%============================================================================
% FrontCoverPage
%===========================================================================
\def\coverpage{
\pagenumbering{alph}
\chapter*{}
\thispagestyle{empty}
\newgeometry{margin=0pt}
%\pagecolor{covercolor}
\color{coverfont}
\begin{overpic}[width=\paperwidth,trim=20 10 0 10]{format/ThesisTopCover.png}
 %Adjust title position by changing \put (x,y)
 %\put(0,0){A} \put(67,99){B}
 \put (7,72) {{\huge\sf  \textbf{\the\phdtitle}}}
            
\put(30,8){
	\begin{flushright}
 {\LARGE{\textbf{\textit{\the\name}}}}
\end{flushright}
}
\end{overpic}
\newpage
\restoregeometry
\pagecolor{white}
\color{black}
}
%============================================================================
% BackCoverPage
%===========================================================================
\def\lastpage{
%\newgeometry{top=0.1in}
%\pagecolor{covercolor}
\clearpage
\thispagestyle{empty}
\pagenumbering{alph}
\chapter*{}
\thispagestyle{empty}
\color{coverfont}
\newgeometry{margin=0pt}
%\pagecolor{covercolor}
\begin{overpic}[width=\paperwidth,trim=10 10 0 10]{format/ThesisBackCover.png}
 \put (7,70) {\begin{minipage}{.8\linewidth}
 \input{19_extra/vita}
\end{minipage}}

 \put(7,20){\includegraphics[width=.2\linewidth]{format/iitg_Rev_transparent.png}}
            
\put(25,28){\begin{minipage}{0.8\linewidth}\begin{flushleft}
    \mbox{{\textbf {\color{coverfont} Department of Computer Science and Engineering}}}\vspace{.01\textheight}\\

    \mbox{\large{\textbf {\color{coverfont} Indian Institute of Technology Guwahati}}}\vspace{.01\textheight}\\

    \mbox{\Large{\textbf {\color{coverfont} Guwahati 781039, India}}}
\end{flushleft}\end{minipage}}
\end{overpic}
\vfill
%\vspace{12cm}
\restoregeometry
\pagecolor{white}
\color{black}}
%============================================================================
% JacketPage %%% Place it at the end
%===========================================================================
\def\jacket{
\newgeometry{margin=.01in,top=0.1in}
\begin{landscape}
\thispagestyle{empty}
\pagecolor{covercolor}
\color{coverfont}
% \KOMAoptions{paper=A3}
% \recalctypearea
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\begin{flushleft}
%%%%%%%%% BACK
\begin{minipage}{.4\linewidth}
 \lastpage
\end{minipage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{flushleft}
\begin{flushright}
%%%%%%%%% TOP
\begin{minipage}{.4\linewidth}
 \lipsum
 %\coverpage
\end{minipage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\end{flushright}
% \KOMAoptions{paper=A4}
% \recalctypearea
 \pagecolor{white}
 \color{black}
\end{landscape}
\restoregeometry
}
