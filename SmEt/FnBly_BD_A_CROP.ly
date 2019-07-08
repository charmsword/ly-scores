\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"



\parallelMusic #'(
voiceC
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
  s1 s4 |
  b'4. b8~ b4 b2 |
  \clef bass <e b'>2.^\markup {12-стр. гитара} b'8 d cis d |
  e1--^\markup {ф-но} <fis g>4-> |
  e,1~_\markup {пэд} e4~ |
  %-------------------------

  s1 s8 s32 g(\startGroup_\markup {\tiny {флейта} } fis g |
  b4. b4. b2 |
  b8 e, b' e~ e2. |
  e1-- <fis g>4-> |
  e1~ e4 |
  %-------------------------

% f!2.)(\glissando d2)\stopGroup |
% b4. b8~ b4 b2 |
% <e, b'>2. b'8 d cis d |
% e1-- <fis g>4-> |
% e1~ e4 |


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
    \new Staff << \relative c''' { \voiceC } \\ \relative c' { \rhMusic } >>
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

