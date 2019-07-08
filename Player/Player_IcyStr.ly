\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 4/2
}


\parallelMusic #'(
voiceC 
voiceD 
) 
% rhMusic
% lhMusic

{
  % Bar 1
  \time 4/2 f''2( fis) r1\fermata |
  es,1 r1       |
  %-------------------------

  % Bar 2
  as,2( bes1 b2 |
 r1. r4 es4~ |
 %-------------------------

  % Bar 3
  es1) r1 | 
  es1 r1 |
  %------------------------

  % Bar 4
  f,2( fis as1) | 
  r1. r4 es4~ |
  %----------------------

  % Bar 5
  \time 5/2 b1( cis2 es2 ges2 |
  es1 r1 r4 es4~ |

  %---------------------

  % Bar 6
 as\breve) |
  es1 r1 |
 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    \with {instrumentName = #"Струнные "} 
    \relative c' { \voiceC }
  \new Staff 
    \with {instrumentName = #"Пэд "} 
    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
