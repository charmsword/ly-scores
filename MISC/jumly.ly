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
voiceC
) 
% rhMusic
% lhMusic

{
% Bar 1
\partial 4
\key d \major d16 e fis gis |
  %-------------------------
  % Bar 2

  a8 gis a fis gis fis gis e |
  %-------------------------
  % Bar 3

  fis d a2 d16 e fis gis |

 }



%\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
%>>
