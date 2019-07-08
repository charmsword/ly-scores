\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


%global = {
%\key d \major
% \time 6/4
%}


\parallelMusic #'(
voiceA 
voiceB 
voiceC
voiceD
) 
% можно добавить ф-но треки:
% rhMusic
% lhMusic

{
  % Bar 1
 \time 6/4  d''8. a16 gis2 d'8. a16 gis2 |
  d'8. d,16 d'8 d a d, d'8. d,16 d'8 d a d, |
  d''8 a d a d16 c b a d8 a d a d16 c b a |
  d,1.~                                   |

  %-------------------------
  % Bar 2
  d'8. a16 gis2 gis8. fis16 gis4 a4 |
  d'8. d,16 d'8 d a d, d'8. d,16 d'8 d a d, |
  d8 a d a d16 c b a d8 a d a d16 c b a |
  d1.~                                   |
  %-------------------------
}


\new StaffGroup << 
  \new Staff  
    \with {instrumentName = #"Струнные "}   
% \global
% <<
    << \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    \with {instrumentName = #"Челеста "}  
      \relative c'  { \voiceC }
  \new Staff 
    \with {instrumentName = #"Бас гитара "}  
    \relative c'  {\clef bass  \voiceD } 
%>>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
