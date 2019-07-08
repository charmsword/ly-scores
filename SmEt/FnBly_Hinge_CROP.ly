
\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"



\parallelMusic #'(
hbowgong
lbowgong
metal
cupUp
cupBot
) 
% voiceD
% rhMusic
% lhMusic

{

 \time 6/4
 \override Glissando.style = #'zigzag  g2\glissando^\ppp^\<^\markup{смычок по мал. гонгу}  g1\glissando~^\!^\ff\> |
 \override Glissando.style = #'zigzag s1 s2  |
  s1 s2 |
d2_\markup{тибетские чаши} b1 |
 \clef bass r2 b1~ |

%-------------------------

g2\glissando^\ppp^\!^\<  g1\glissando^\!^\ff^\> |
 \cadenzaOn r2 g2.\glissando\<_\markup{смычок по бол. гонгу}  \hideNotes a4\! \unHideNotes \cadenzaOff  |
s1 s2 |
d2 b1\< |
b1. |
%-------------------------
%\break
%g2\glissando^\ppp^\!^\<  g1\glissando^\!^\ff^\> |
%g1.\glissando\<  |
%s1 s2 |
%d2 b1 |
%r2 b1~ |
%%-------------------------
%
%g2\glissando^\ppp^\!^\<  g1\glissando^\!^\ff^\> |
%g1.\glissando\<  |
%s1 s2 |
%d2 b1 |
%b1. |
%%-------------------------
%
%g2\glissando^\ppp^\!^\<  g1\glissando^\!^\ff |
%g1.\glissando\<  |
%d'1~_>_\<_\markup{шелест/лязг гонга} d2_\!_\ff |
%d2 b1 |
%r2 b1 |

%=========================
 }


\layout { 
% ragged-right = ##f 
  \context {
      \Staff
%     \consists "Pitch_squash_engraver" 
  \consists "Horizontal_bracket_engraver"
}
%\context {
%    \Score
%    defaultBarType = ""
%    }
  }

  \new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные " \consists "Pitch_squash_engraver" } 
<< \relative c''' { \hbowgong } \\ \relative c'' { \lbowgong } \\ \relative c { \metal } >>
  \new PianoStaff 
%    \with {instrumentName = #"Фортепиано "} 
<< \new Staff \relative c' { \cupUp }  
\new Staff \relative c { \cupBot } >>
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
>>

