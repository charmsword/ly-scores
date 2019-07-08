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
  <es, geh>1~\<   |
  <as' des>1~^\markup { pad } |
  s1 |
  \clef bass <as des>1~\< |
  %-------------------------

\cadenzaOn  <es geh>1~ \hideNotes a4\! \unHideNotes \cadenzaOff   |
  <as des>1~ |
  s1 |
\cadenzaOn  \clef bass <as des>1 \hideNotes a4\! \unHideNotes \cadenzaOff |
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

