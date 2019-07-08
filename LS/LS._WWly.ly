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
voiceC
voiceD
voiceE
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \key d \major \time 3/4
  d4-.^"струнные" r4 fis4-. |
  \clef "bass" <fis, d'>4-.-> r4 <g d'>4-.-> |
  d,,4 r8. d16 g8. d16 |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g'4_"ударные" r4 r8 g8 |
  %--------------------bar2 

  a4-. r8 d,16 d g16 a8. |
  <fis d'>4-.-> r4 <g d'>4-.-> |
  d4 r8. d16 g8. d16 |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g4 r4 r8 g8 |
  %--------------------bar3 

  a4-.-> r8. e16 fis16 a8. |
  <fis d'>4-.-> r4 <g d'>4-.-> |
  d4 r8. d16 g8. d16 |
  \clef "percussion" \drummode {\repeat tremolo 16 sn32 r8 sn16 sn16} |
  g4 r4 r8 g8 |
  %--------------------bar4 

  a4-.-> r8 fis16 d b'16[-> a8 fis16] |
  <fis d'>4-.-> r4 <g d'>4-.-> |
  d4 r8. d16 g8. d16 |
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
    %\with {instrumentName = #"Фортепиано "} 
    <<  \relative c' { \voiceB } \\ \relative c' { \voiceC } >>
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
