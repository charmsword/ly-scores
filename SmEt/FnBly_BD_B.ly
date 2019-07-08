\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"



\parallelMusic #'(
rhMusic
lhMusic
voiceA 
voiceB
) 
% voiceD
% rhMusic
% lhMusic

{

  \time 5/4
  <e b'>^\markup {мандолина} b8 <e b'>4. <e b'>8 <d b'> <b b'> <d b'> |
  \clef bass <e b'>2.^\markup {12-стр. гитара} b'8 d cis d |
  e1--^\markup {ф-но} <fis g>4-> |
  e,1~_\markup {пэд} e4~ |
  %-------------------------

  <d b'>8 <e b'>4 <e b'>4. <e b'>8 <fis b> <g b> <fis b> |
  b8 e, b' e~ e2. |
  e1-- <fis g>4-> |
  e1~ e4 |
  %-------------------------

  << {e4.--(^\markup {скрипка} fis8 g4)-. a4..( g16} \\ {<e b'>1 r4} >> |
 <e, b'>2. b'8 d cis d |
 e1-- <fis g>4-> |
 e1~ e4 |

 %-------------------------
 << { fis4-> e1--)} \\ { s1 s4 } >> |
 <e, b'>2. b'8 d cis d |
 e1-- <fis g>4-> |
 e1~ e4 |

%=========================
 }


\layout { 
  \context {
      \Staff
%     \consists "Pitch_squash_engraver" 
  \consists "Horizontal_bracket_engraver"
    }
  }

\new StaffGroup <<
  \new PianoStaff <<
    \new Staff \relative c' { \rhMusic }
    \new Staff \relative c { \lhMusic }
   >>
  \new Staff 
%    \with {instrumentName = #"Струнные " \consists "Pitch_squash_engraver" } 
<< \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
%  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
% \relative c { \voiceC } 
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
>>

