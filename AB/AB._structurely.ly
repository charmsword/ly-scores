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

  \time 4/4
  <a' cis>4\mp--^"ф–но" <g c>2.\p\< |
  \override Glissando.style = #'zigzag <g d'>1_"дульцимер"\glissando |
  %--------------------bar2 

  <a cis>4 <g f'>2.\mf\! |
 <g d'>1\glissando |
  %--------------------bar3 

  <a cis>4 <g c>2.\> |
  <g d'>1\glissando |
  %--------------------bar4 

  \time 6/4
  <f c'>2\! <e a cis>4-- <g c>2. |
  <g d'>1. |

}


 



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
\new Staff 
%   %\with {instrumentName = #"Фортепиано "} 
  \relative c' { \voiceA }
%\new Staff
\relative c' { \voiceB }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
