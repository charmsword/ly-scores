\version "2.18.2"
\include "lilypond-book-preamble.ly"


global = {
\key e \minor
  \time 4/4
}


\parallelMusic #'(
voiceA 
voiceB 
voiceC) 

{
  %-------------------------
  b1 |
  b8 b' b, b' b, b' b, b' |
  <g d' g>1 |

  %-------------------------
  d2 cis |
  b,8 b' b, b' b, b' b, b' |
  <a e' a>1 |

  %-------------------------
  b1~ |
  b,8 b' b, b' b, b' b, b' |
  <b fis' b>1~ |

  %-------------------------
  b1 |
  << { s2 s8 ais4^> ais8^> } \\ { b,8 b' b, b' b, ais' b, ais' }  >> |
  <b fis' b>1 |

  %-------------------------
 }

\new StaffGroup <<
  \new Staff 
  \with {instrumentName = #"Струнные "} \relative c'' { \voiceA }
  \new Staff 
  \with {instrumentName = #"Фортепиано "} \relative c' { \voiceB }
  \new Staff 
  \with {instrumentName = #"Электрогитара "} \relative c {\clef bass  \voiceC }
>>


