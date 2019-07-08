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
) 

%voiceC
%voiceD
% можно добавить ф-но треки:
% rhMusic
% lhMusic

{
  % Bar 1
 \time 3/4  d''8. a16 gis2 |
  d'8. d,16 d'8 d a d, |

  %------------------------

  % Bar 2
  d'8. a16 gis2 |
  d'8. d,16 d'8 d a d, |
  %-------------------------

  % Bar 3
  d'2.~ |
  d'8. d,16 d'8 d a d, |
  %-------------------------

  % Bar 4
  d2. |
  d'8. d,16 d'8 d a d, |
  %-------------------------
}


\new StaffGroup << 
  \new Staff  
%   \with {instrumentName = #"Струнные "}   
% \global
% <<
    << \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
% \new Staff 
%   \with {instrumentName = #"Челеста "}  
%     \relative c'  { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Бас гитара "}  
%   \relative c'  {\clef bass  \voiceD } 
%>>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
