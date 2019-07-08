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
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \key d \minor \time 5/4
  d''1~^"скрипки" d4 |
  s1 s4 |
  <d f a>4..->^"медные духовые"\< <des ges bes>16 <d f a>8. <des ges bes>16 <d f a>2 |
  r1 s4 |
  %--------------------bar2 

  \time 4/4
  gis,1 |
  s1 |
  <des ges bes>1\!\> |
  r1 |
  %--------------------bar3 

  \time 6/4
  a2 f cis~ |
  cis'1.->_"колокол" |
  <d f a>1.\!|
  \clef "bass" <d f a>1.\<_"низкие струнные" |
  %--------------------bar4 

  \time 4/4
  cis1 |
  s1 |
  r1 |
  <des ges bes>1\! |



 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    <<  \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff
  \relative c' { \voiceC }
  \new Staff
  \relative c { \voiceD }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
