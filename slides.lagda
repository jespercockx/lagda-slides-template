\documentclass[dvipsnames,14pt,table,fleqn]{beamer}

\usepackage{agda}
\usepackage{newunicodechar}

\newunicodechar{∷}{::}
\newunicodechar{→}{\ensuremath{\to}}
\newunicodechar{ω}{\ensuremath{\omega}}
\newunicodechar{⊎}{\ensuremath{\uplus}}
\newunicodechar{≔}{\ensuremath{\coloneqq}}
\newunicodechar{∎}{\ensuremath{\blacksquare}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{ᵣ}{\ensuremath{_r}}
\newunicodechar{ₗ}{\ensuremath{_l}}
\newunicodechar{▴}{\ensuremath{\blacktriangle}}
\newunicodechar{▾}{\ensuremath{\blacktriangledown}}
\newunicodechar{▹}{\ensuremath{\triangleright}}
\newunicodechar{∸}{\ensuremath{\dot{-}}}
\newunicodechar{⊛}{\ensuremath{\circledast}}
\newunicodechar{ᵀ}{\ensuremath{{}^{\text{T}}}}
\newunicodechar{⌿}{\ensuremath{\not-}}
\newunicodechar{←}{\ensuremath{\leftarrow}}
\newunicodechar{×}{\ensuremath{\times}}
\newunicodechar{λ}{\ensuremath{\lambda}}
\newunicodechar{∀}{\ensuremath{\forall}}
\newunicodechar{Π}{\ensuremath{\Pi}}
\newunicodechar{≡}{\ensuremath{\equiv}}
\newunicodechar{≅}{\ensuremath{\cong}}
\newunicodechar{≐}{\ensuremath{\doteq}}
\newunicodechar{∈}{\ensuremath{\in}}
\newunicodechar{∧}{\ensuremath{\land}}
\newunicodechar{∨}{\ensuremath{\lor}}
\newunicodechar{⊤}{\ensuremath{\top}}
\newunicodechar{⊥}{\ensuremath{\bot}}
\newunicodechar{⊔}{\ensuremath{\sqcup}}
\newunicodechar{∷}{\ensuremath{{::}}}
\newunicodechar{ℓ}{\ensuremath{\ell}}
\newunicodechar{₀}{\ensuremath{{_0}}}
\newunicodechar{₁}{\ensuremath{{_1}}}
\newunicodechar{₂}{\ensuremath{{_2}}}
\newunicodechar{₃}{\ensuremath{{_3}}}
\newunicodechar{₄}{\ensuremath{{_4}}}
\newunicodechar{₅}{\ensuremath{{_5}}}
\newunicodechar{₆}{\ensuremath{{_6}}}
\newunicodechar{₇}{\ensuremath{{_7}}}
\newunicodechar{₈}{\ensuremath{{_8}}}
\newunicodechar{₉}{\ensuremath{{_9}}}
\newunicodechar{⟨}{\ensuremath{{\langle}}}
\newunicodechar{⟩}{\ensuremath{{\rangle}}}
\newunicodechar{̧}{\c}
\newunicodechar{≤}{\ensuremath{\leq}}
\newunicodechar{ℕ}{\ensuremath{\mathbb{N}}}
\newunicodechar{∸}{̣\ensuremath{-}}

\setbeamertemplate{frametitle}
  {\begin{centering}
   \insertframetitle\par
   \end{centering}}
\setbeamertemplate{itemize item}{$\bullet$}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{section in toc}[sections numbered]

\setbeameroption{hide notes}

\AtBeginSection[]{
  \begin{frame}{Outline}
  \small \tableofcontents[currentsection, hideothersubsections]
  \end{frame}
}

\title[]{My Awesome Presentation}
\subtitle{A template for using literate Agda with Latex Beamer}
\author[J. Cockx]{\textbf{Jesper Cockx}}
\date{\today}


\begin{document}

\begin{frame}[plain,noframenumbering]
\titlepage
\end{frame}

\begin{frame}{Testing literate Agda}
  \begin{code}
    data Bool : Set where
      true   : Bool
      false  : Bool

    id : {A : Set} → A → A
    id = λ x → x
  \end{code}
\end{frame}

\end{document}
