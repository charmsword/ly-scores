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

  \key f \major \time 3/4
  f4.^"ф–но" g8 a[ f] |
  \key f \major \time 3/4 \clef "bass"
  c4 c c |
  %--------------------bar2 

  <f bes>4. <f a>8~ <f a>4  |
  d4 d8[ c]~ c[ d] |
  %--------------------bar3 

  f4. g8 a4 |
  c4 c~ c8 d |
  %--------------------bar4 

  f2. |
  d4 a~ a8 d |
  %--------------------bar5 

  g8 f4. f4 |
  <bes d>4. c8 c[ c] |
  %--------------------bar6 

  f2. |
  <a d>2 d8 a |



 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
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
