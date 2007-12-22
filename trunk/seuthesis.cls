%%
%% This is file `seuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% seuthesis.dtx  (with options: `cls')
%% 
%% Copyright (C) 2007-2007 by Xu Yuan <xuyuan.cn@gmail.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{seuthesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions
\LoadClass[a4paper,10.5pt]{scrbook}
 \RequirePackage{ccmap} %�ɿ�����~pdf
 \RequirePackage{graphicx}
 \RequirePackage{indentfirst}
 \RequirePackage{setspace}
 \RequirePackage{tikz}
 \RequirePackage{hyperref}

 % A4ֽ�ţ�����ҳ�߾�2cm��������ҳ�루����������ҳ�룬�ײ����У���
 %˫��ӡˢ��������װ����Ҫ�����������ҳ�߾�Ҳ����ѡ2.5cm��
 % ����ҳ�߾�
 \RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm]{geometry}
 \RequirePackage[pagestyles]{titlesec}
 \RequirePackage{titletoc} % ����Ŀ¼

 \RequirePackage{CJK} %����֧��
 \RequirePackage{CJKnumb}
 \AtBeginDocument{\begin{CJK*}{GBK}{fzst}\CJKtilde\CJKindent\CJKcaption{GB}%
 \input{seuthesis.cfg}} %���������ļ�

 \AtEndDocument{\end{CJK*}}
\newcommand{\song}{\CJKfamily{fzst}}
\newcommand{\lishu}{\CJKfamily{li}}
\newcommand{\hei}{\CJKfamily{fzht}}
\newcommand{\kai}{\CJKfamily{fzkt}}
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yichu}{\fontsize{32pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
 \renewcommand{\maketitle}{
   \chinesecover
   \englishcover
   \frontmatter % ��ʼ����֮ǰ�Ĳ���
   \pagestyle{seufrontstyle}
   \seudeclare
   \song\sihao{\tableofcontents} %Ŀ¼��������ɲ���4�����塣
   \pagestyle{seustyle}
   \song\wuhao
   \mainmatter % ��ʼ���Ĳ���
}
\newcommand{\chinesecover}{
\begin{titlepage}

\begin{tabular}{ll}%����С��
  \makebox[1.25cm][s]{\normalsize \categorynumberpre}{
    \underline{\makebox[1.25cm][c]{\varcategorynumber}}} &
  \makebox[1.25cm][s]{\normalsize \secretlevelpre}{
    \underline{\makebox[1.25cm][c]{\varsecretlevel}}}\\
  \makebox[1.25cm][c]{\hspace{1pt}U\hfill D\hfill C\hspace{2pt}}{
    \underline{\makebox[1.25cm][c]{\varUDC}}} &
  \makebox[1.25cm][s]{\normalsize \studentidpre}{
    \underline{\makebox[1.25cm][c]{\varstudentid}}}\\
\end{tabular}

\begin{picture}(0,0)(-325,55)
\includegraphics[scale=1]{logo}
\end{picture}

\vspace*{70pt}
\begin{center}
  \makebox[10cm][s]{\xiaochuhao\lishu\universityname}\\%����С��
  ~\\
  \makebox[14cm][s]{\xiaochuhao\lishu\academicdegree}%����С��
\end{center}

\vspace*{20pt}
\begin{center}
  \yihao\hei\@title\\%���� ����һ�ž���
  ~\\
  \yihao\hei\varsubtitle%������ ����һ�ž���
\end{center}

\vspace*{40pt}

\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{0pt}
\begin{center}
\begin{tabular}{cr}
  \makebox[4cm][s]{\xiaoerhao\song\authorpre~~~~~~} &%����С��
  \underline{\makebox[6cm][s]{\hspace{2cm}\makebox[2cm][s]{\xiaoerhao\hei\@author}}} \\%����С������
  \makebox[4cm][s]{\xiaoerhao\song\advisorpre~~} &
  \underline{\makebox[6cm][s]{\hspace{1cm}\xiaoerhao\hei\varadvisorname\hspace{1cm}\xiaoerhao\hei\varadvisortitle}} \\
      &
      \underline{\makebox[6cm][s]{\hspace{1cm}\xiaoerhao\hei\varcoadvisorname\hspace{1cm}\xiaoerhao\hei\varcoadvisortitle}} \\
\end{tabular}
\end{center}

\vspace*{20pt}

\setlength{\tabcolsep}{10pt}
\begin{center}
\begin{tabular}{ll}
  \makebox[3cm][s]{\song\sihao\applicantlevelpre %�����ĺ�
    \underline{\makebox[5cm][c]{\hei\varapplicantlevel}}} & %�����ĺŴ���

  \makebox[3cm][s]{\song\sihao\majorpre
    \underline{\makebox[5cm][c]{\hei\varmajor}}}\\

  \song\sihao\submitdatepre
    \underline{\makebox[5cm][c]{\hei\varsubmitdate}} &

  \song\sihao\defenddatepre
    \underline{\makebox[5cm][c]{\hei\vardefenddate}}\\

  \song\sihao\authorizeorganizationpre
    \underline{\makebox[5cm][c]{\hei\varauthorizeorganization}} &

  \song\sihao\authorizedatepre
    \underline{\makebox[5cm][c]{\hei\varauthorizedate}}\\

  \song\sihao\committeechairpre
    \underline{\makebox[4.5cm][c]{\hei\varcommitteechair}} &

  \song\sihao\readerpre
    \underline{\makebox[5cm][c]{\hei\varreader}}\\
\end{tabular}
\end{center}

\vfill

\song\sihao\centerline{\@date}

\end{titlepage}
}
\newcommand{\englishcover}{
  \thispagestyle{empty}%
  \begin{spacing}{1.0}\begin{center}
    \begin{spacing}{1.5}\LARGE\textrm{\vartitleeng}\end{spacing}%
    \normalsize{\varsubtitleeng}
    \vspace{1.0in}%
    {\large
      {A Dissertation Submitted to}\\
      {\universitynameeng}\\
      {For the Academic Degree of \academicdegreeeng}\\
      {\vspace{0.5in}}%
      {BY}\\
      {\varauthoreng}\\
      {\vspace{0.5in}}%
      {Supervised by:}\\
      {\varadvisortitleeng\  \varadvisornameeng}\\
      {and}\\
      {\varcoadvisortitleeng\  \varcoadvisornameeng}\\
      {\vspace{0.5in}}%
      {\vfill}
      {\vardepartmenteng}\\
      {\universitynameeng}\\
      {\varsubmitdateeng}\\
    }%
  \end{center}\end{spacing}%
  \clearpage%
}

\endinput
%%
%% End of file `seuthesis.cls'.