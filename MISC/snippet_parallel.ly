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
  % Bar 1
  r8 g16 c e g, c e r8 g,16 c e g, c e  |
  r16 e8.~ e4       r16 e8.~  e4        |
  c2                c                   |
  c,2                c                   |
  %-------------------------
  % Bar 2
  r8 a,16 d f a, d f r8 a,16 d f a, d f |
  r16 d8.~  d4       r16 d8.~  d4       |
  c2                 c                  | 
  c,2                c                   |
  %-------------------------
 }



\new StaffGroup <<
  \new Staff 
    \with {instrumentName = #"Струнные "} 
    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    \with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceC }
  \new Staff 
    \with {instrumentName = #"Электрогитара "} 
    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
