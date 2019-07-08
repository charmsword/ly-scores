\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 2/4
}


\parallelMusic #'(
voiceA 
voiceB 
voiceD
voiceC
) 
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian
  \override Glissando.style = #'zigzag
  \cadenzaOn  des,1->\>\glissando^\markup {pad} \hideNotes a4\! \unHideNotes \cadenzaOff   |
  s1 |
  s1 |
  \override Glissando.style = #'zigzag
  \cadenzaOn  \clef bass es,1->\>\glissando_\markup {bass} \hideNotes b4\! \unHideNotes \cadenzaOff |
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB } \\ \relative c' { \voiceD } >>
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

