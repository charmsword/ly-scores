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
voiceE
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \key d \major \time 3/4
  d'4-.->^"Струнные" r4 d16 cis8 a16 |
  r4 <d g b>2\<_"медные духовые" |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g'4_"ударные" r4 r8 g8 |
  %--------------------bar2 

  d4-.-> b16 cis8 a16 d16 cis8 a16 |
  r4 <d fis a>2\!\< |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g4 r4 r8 g8 |
  %--------------------bar3 

  d4-.-> r4 d16 cis8 a16 |
  r4 <d g b>2\!\<  |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g4 r4 r8 g8 |
  %--------------------bar4 

  b4-.-> b16 cis8 a16 d16 cis8 g16 |
  <d g b>4\!\>( <d fis a>4 <d g>4\!) |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g4 r4 r8 g8 |







 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff
  \relative c' { \voiceA }
  \new Staff
  \relative c' { \voiceB }
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    <<  \relative c { \voiceD }  \\ \relative c { \voiceE } >>
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
