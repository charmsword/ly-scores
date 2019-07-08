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
) 
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian
  s1 |
  bes8-+ es as,-+ des16-+ as d8-+ es-+ bes4-+    |
  s1
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB } \\ \relative c' { \voiceD } >>
% \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
%   \relative c { \voiceC }
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

