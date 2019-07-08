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

  \key f \minor \time 12/8
  f4.^"медные духовые" c'4. c4 c8 des4 as8 |
  \xNote {f4._"литавры" f f c} |
  
  %--------------------bar2 

  f4 f8 c'4. c8 as c des4 as8 | \noBreak
  \xNote {f4. f f c} | \noBreak
  %--------------------bar3 

  c4. f,4 f8 c'8 f, c' des4 as8 | \noBreak
  \xNote {f4. f f c} | \noBreak
  %--------------------bar4 

  c4 f,8 c'4 f,8 c' f, c' des4 as8 |
  \xNote {f4. f f c} |



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
