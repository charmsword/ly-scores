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
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \time 3/4
  g'''4 fis e |
  <g' e'>2.|
  %--------------------bar2 

  fis8 b, b4~ b8. b16 |
  <fis dis'>2. |
  %--------------------bar3 

  a4 b2 |
  <g e'>2. |
  %--------------------bar4 

  d2. |
  <fis d'>2. |
  %--------------------bar5 

  b4 a g |
  <e cis'>2. |
  %--------------------bar6 

  b8 e, e4~ e8. e16 |
  <e c'>2. |
  %--------------------bar7 

  d4 e4. b8 |
  <c g' a>2 b4 |
  %--------------------bar8 

  e2. |
  e2. |
}


 



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
\new Staff 
%   %\with {instrumentName = #"Фортепиано "} 
  \relative c' { \voiceA }
\new Staff
\relative c' { \voiceB }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
