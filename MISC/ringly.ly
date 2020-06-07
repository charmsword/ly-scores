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
  %--------------------bar1 

  \time 4/4
  \key a \minor b'4^"Am" c2 \tuplet 5/4 {b16 c b a c} |
  %--------------------bar2 

  b1^"A♭m"  |
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
