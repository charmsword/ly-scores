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
voiceD
) 
% rhMusic
% lhMusic

{
% Bar 1

r4 \tuplet 3/4 {<c' e g>8^"Трубы" <c e g> <c e g>} <ais c fis>2 |
c4^"Валторны" g' fis c'~ |
  %-------------------------
  % Bar 2

  r8. <c e g>32 <c e g> <c e g>8.  <c e g>32 <c e g> <c es as>2 |
c,8 c8 e c fis4 c'4 |
  %-------------------------

 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceC }
 \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
   \relative c' { \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
