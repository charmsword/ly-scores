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
%voiceA 
%voiceB 
%voiceD
% rhMusic
% lhMusic



{
% s1 |
%s1 |
\clef bass
c,2( f |

%-------------------------
%s1 |
%s1 |
g2 bes4) r |
%-------------------------
%=========================
 }


\new StaffGroup <<
%  \new Staff 
%   \with {instrumentName = #"Струнные "} 
%    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
    \relative c {\voiceC }
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c \clef bass  {\voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

