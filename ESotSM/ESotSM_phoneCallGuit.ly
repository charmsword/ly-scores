\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 2/4
}


guitDes = \relative c' { des8 des' f as f des f des }
guitGes = \relative c' { ges8 bes' des ges des bes des bes }

\parallelMusic #'(
voiceA
voiceB
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \key ges \major \time 4/4
  \guitDes |
  \key ges \major \time 4/4
  \guitGes |
  %--------------------bar2 

  \guitDes |
  \guitGes |
  %--------------------bar3 

  \guitDes |
  \guitGes |
  %--------------------bar4 

  \guitDes |
  as' c' es as es c es c |




 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceA }
  \new Staff
  \relative c { \voiceB }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
