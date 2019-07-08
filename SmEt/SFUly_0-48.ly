\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"



\parallelMusic #'(
voiceA 
voiceB 
voiceC
) 
% voiceD
% rhMusic
% lhMusic

{

  \time 6/8
  bes8^\markup {mandolin, ukulele} a a16 a8. ges8 a8  |
  \improvisationOn \repeat percent 3 {bes'16 bes bes bes }     |
  <es' as des geh>2.~\<_\markup { pad } |
  %\clef bass es4. es8 es8 r4. |
  %-------------------------

 a16 a8. ges8 a a16 a16 a8 |
  \repeat percent 3 {bes16 bes bes bes }   \improvisationOff  |
<es as des geh>2.~ \cadenzaOn  \hideNotes a4\! \unHideNotes \cadenzaOff   |
  %r1 |
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные " \consists "Pitch_squash_engraver" } 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB }  >>
  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
 \relative c { \voiceC } 
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

