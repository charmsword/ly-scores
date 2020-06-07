\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


\parallelMusic #'(
voiceC
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

\key g \minor
g'4^"Gm" g8. g16 g4 es8.^"Esm" bes'16 |
%--------------------bar2 

  g4^"Gm" es8.^"Esm" bes'16 g2^"Gm" | 
  %--------------------bar3 

  d'4^"Gm" d8. d16 d4 es8. bes16 |
%--------------------bar4 

ges4^"Esm" es8. bes'16 g2^"Gm" |
}

%\chords {
%  g2.:m es4:m
%  g4:m es4:m g2:m 
%  g1:m
%  es2:m g2:m
%}



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
