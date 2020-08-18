\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{csethesis}[2020/04/09]
%\PassOptionsToClass{12pt}{report}
%\PassOptionsToClass{oneside,a4paper,12pt}{report}
\LoadClass{book}
\PassOptionsToClass{a4paper,12pt,twoside}{book}
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
%\setlength{\textheight}{11.4in}
%\setlength{\textwidth}{8.5in}
%\setlength{\topmargin}{-0.5in}
%\setlength{\oddsidemargin}{-0.1in}
%\setlength{\evensidemargin}{-0.1in}


%\addtolength{\oddsidemargin}{-.875in}
%\addtolength{\evensidemargin}{-.875in}
%\addtolength{\textwidth}{1.75in}

%\addtolength{\topmargin}{-.875in}
%\addtolength{\textheight}{1.75in}
%=============================================================================
% Finally set the various lengths/margins as required by IITG format
% Check out LaTeX Companion for more details.
%=============================================================================
%===== page layout defined by 4 dimensions, others are calculated from these
\newdimen \insidemargin
\newdimen \outsidemargin
\newdimen \abovemargin
\newdimen \belowmargin

% Define the side margins for a right-side page
\insidemargin=4cm       % Actual space
\outsidemargin=3cm
%% Above margin is space above the header
%% Below margin is space below footer
\abovemargin=4cm        % Actual space
\belowmargin=4cm
%================
\setlength{\textheight}{22.5cm}
\setlength{\textwidth}{150mm}
\setlength{\headheight}{0.5cm}
\setlength{\headsep}{12mm}
\setlength{\topmargin}{3cm}  
%================
\newif\if@fancyhdr
\DeclareOption{fancyhdr}{\@fancyhdrtrue}
\DeclareOption{plainhdr}{\@fancyhdrfalse}

%\ExecuteOptions{plainhdr}
\ExecuteOptions{fancyhdr}
\ProcessOptions
\RequirePackage[percent]{overpic}

% % Paper height & width (A4 paper) - set by a4paper option to report
% %\setlength{\paperheight}{297mm}
% %\setlength{\paperwidth}{210mm}
% % total text area: height & width
% \setlength{\textheight}{210mm}
% \setlength{\textwidth}{150mm}
% 

% Leave more space for the header (originally 12pt)
% \headheight =15pt

% Other parameters retain their default values (values for 12pt documents)
% \headsep - space from bottom of header to top of text (25pt)
% \footskip - distance from the bottom of text to bottom of footer (30pt)

% The rest of the dimensions are calculated from the above values
% (compensation for TeX 1in margin offsets is done here)
%\RequirePackage{geometry}
%====== Text Width adjustment
%  \textwidth=\paperwidth
%  \advance\textwidth by -\insidemargin
%  \advance\textwidth by -\outsidemargin
%  \oddsidemargin=\insidemargin
%====== Text Height adjustment
%  \textheight=\paperheight
%  \topmargin=\abovemargin
  
%  \advance \textheight by -\abovemargin
%  \advance \textheight by -\headheight
%  \advance \textheight by -\headsep
%  \advance \textheight by -\belowmargin
%  \advance \textheight by -\footskip
%  \advance \topmargin by -10mm
  %\advance\oddsidemargin by -30mm
%if@twoside
%    \evensidemargin = \outsidemargin
%    \advance\evensidemargin by -10mm
%    %\geometry{verbose,tmargin=10mm,bmargin=10mm,lmargin=\insidemargin,rmargin=\the\outsidemargin}
%\else
%    \evensidemargin = \oddsidemargin
%\fi
%========= Get page sizes
\newcommand{\printLog}{\chapter{LOG}
\newpage
evensidemargin \the\evensidemargin\\
outsidemargin \the\outsidemargin\\
\\
oddsidemargin \the\oddsidemargin\\
insidemargin \the\insidemargin\\
\\
abovemargin \the\abovemargin\\
topmargin \the\topmargin\\
\\
belowmargin \the\belowmargin\\
\\
textheight \the\textheight\\
paperheight \the\paperheight\\
\\
textwidth \the\textwidth\\
paperwidth \the\paperwidth\\
\if@twoside
  twosid in class options\\
  %\thispagestyle{splPage}\newpage
\else
  oneside in class options\\
\fi
\if@fancyhdr
  Apply fancyhdr\\
\else
  Apply plainhdr\\
\fi
}
%========= Fancy headings setup
% Single-sided printing
%   header:   3.2 Section        5
%             --------------------
% Double-sided printing
%   header:   3.2 Section        5|     4            Chapter
%   odd       --------------------|     even      --------------------
%===================================================
\if@fancyhdr
  \RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \if@twoside
    \renewcommand{\chaptermark}[1]{\markboth{#1}{}}
    \renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
    \fancyhf{}          % clear all fields
    %%%%%   Header
    %\fancyhead[LE,RO]{\bfseries \nouppercase{\leftmark}}
    \fancyhead[LE]{\ifnum \value{chapter}>0 \bfseries \nouppercase{\chaptername:~\thechapter~\leftmark} \fi}
    \fancyhead[RO]{\ifnum \value{chapter}>0 \bfseries \nouppercase{Section:~\rightmark} \fi}
    %%%%%   Footer
    %\fancyfoot[LE]{EVEN}
    \fancyfoot[CE,CO]{\bfseries \thepage}
    %\fancyfoot[RO]{ODD}
    %\fancyfoot[LO,RE]{IN-SIDE}
  \else
    \renewcommand{\chaptermark}[1]{\markright{\thechapter\ #1}}
    \renewcommand{\sectionmark}[1]{}
    \fancyhf{}          % clear all fields
    %\fancyhead[CE,CO]{\bfseries \thepage}
    \fancyhead[LE,RO]{\bfseries \nouppercase{\rightmark}}
    \fancyfoot[CO,CE]{\bfseries \thepage}
    %\fancyfoot[LE]{EVEN}
    %\fancyfoot[RO]{ODD}
  \fi

  %\renewcommand{\footrulewidth}{0.4pt}
  \renewcommand{\headrulewidth}{0.4pt}
  \def\headrule{{\headrulehook
                 \hrule height\headrulewidth width\headwidth
                 \vskip-\headrulewidth}}
  \def\headrulehook{}
% Notes:
%  - \nouppercase is to knock out the hardwired uppercase in contents and bibliography
%  - \headrulehook can used for colour, e.g. \def\headrulehook{color{red}}
  \fancypagestyle{empty}{%
    \fancyhf{}          % clear all fields
    \renewcommand{\headrule}{\hrule height 0pt \vspace{0mm}\hrule height 0pt}
    \fancyfoot[LE]{\tiny \textcolor{white}{Ee}}
    \fancyfoot[RO]{\tiny \textcolor{white}{Eo}}}

% Redefine plain style (used by \chapter) to just a page number at the top
  \fancypagestyle{plain}{%
    \fancyhf{}          % clear all fields
    \setlength{\headheight}{23pt}
    \renewcommand{\headrule}{\hrule height 0pt \vspace{0mm}\hrule height 0pt}
    \fancyfoot[C]{\bfseries \thepage}
    \fancyfoot[LE]{\tiny \textcolor{white}{Pe}}
    \fancyfoot[RO]{\tiny \textcolor{white}{Po}}}
  \fancypagestyle{splPage}{%
    \fancyhf{}          % clear all fields
    	\renewcommand{\footrulewidth}{0.4pt}
    \fancyfoot[C]{\bfseries Intentionally Left Blank}
    \fancyfoot[LE]{\tiny \textcolor{white}{Se}}
    \fancyfoot[RO]{\tiny \textcolor{white}{So}}}
  \fancypagestyle{cleanPage}{%
    \fancyhf{}          % clear all fields
    \renewcommand{\headrule}{\hrule height 0pt \vspace{0mm}\hrule height 0pt}
    \fancyfoot[C]{ }
    \fancyfoot[LE]{\tiny \textcolor{white}{Ce}}
    \fancyfoot[RO]{\tiny \textcolor{white}{Co}}
    \renewcommand{\footrulewidth}{0.4pt}}
\fi
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
%=========
\RequirePackage{scrextend}
\newcommand{\startOddPage}{\ifthispageodd{\phantom{.}}{
  \thispagestyle{splPage}
  %\begin{center}
  %  Intentionally Left Blank
  %\end{center}
  \clearpage\newpage}}
%=========
 \renewcommand{\cleardoublepage}{%
   \clearpage
   \if@twoside
     \ifodd\c@page
     \else
       \hbox{}\thispagestyle{splPage}\newpage
       \if@twocolumn \hbox{}\newpage \fi
     \fi
   \fi}

%\providecommand\blankpage{\clearpage\null\thispagestyle{empty}\addtocounter{page}{-1} \begin{center}{\Large Page left Blank}\end{center}\newpage}
%===========================================================================
\newtoks\phdtitle
\newtoks\name
\newtoks\rollno
\newtoks\email
\newtoks\guide
%=============================================================================
% The glossary environment must do the following:
% - produce the table of contents entry for the glossary
% - start a new page with GLOSSARY centered two inches from the top
%=============================================================================
\def\glossary{
  \chapter*{Glossary}
  \addcontentsline{toc}{chapter}{Glossary}}
\def\endglossary{\cleardoublepage}

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
\def\endnomenclature{\cleardoublepage}
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
% % \def\listofsymbols{
% %   \chapter*{List of Symbols}
% %   \addcontentsline{toc}{chapter}{List of Symbols}
% %   \@mkboth{ \MakeUppercase {List of Symbols}}{\MakeUppercase {List of Symbols}}%
% %    \@starttoc{los}}
% % \def\endlistofsymbols{\par\newpage}

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

\def\coverbio{
}
\def\endcoverbio{}
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
\newcommand{\singlespace}
  {\renewcommand{\baselinestretch}{\oneskip}\Large\normalsize}
\newcommand{\doublespace}
  {\renewcommand{\baselinestretch}{\twoskip}\Large\normalsize}


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
%   \chapter*{ }
% -- vertical space --
% Title with \LARGE \bfseries
% Author with \Large \itshape
% Organization with \large
% Date with \large
% -- vertical space --
% Note

%   \begin{center}%
%     \null\vfil \vskip 200\p@ % vertical centering (extra 75pt at top)
%     {\LARGE \bfseries \@title \par}%
%     \vskip 20ex%
%    {\Large \itshape \@author}%
%     \vskip 6ex%
%     {\large
%      \lineskip 1em%
%      \begin{tabular}[t]{c}%
%        \@organization
%      \end{tabular}\par}%
%     \vskip 5ex%
%     {\large \@date \par}%
%     \vskip 5em%
%     \vfil\null          % vertical centering
%     \@note
%   \end{center}\par
%   \@thanks
  \cleardoublepage
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
  \startOddPage
  %\newpage
  %\thispagestyle{plain}    % No page number
  %\setcounter{page}{0}
  % \addtocounter{page}{-1}
  %\chapter*{}            % Required for \vfill to work
  \thispagestyle{plain}    % No page number
  %\thispagestyle{empty}    % No page number
  %\null\vfil
  \begin{center}}
\def\enddedication{\end{center}\cleardoublepage}
%=============================================================================
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
