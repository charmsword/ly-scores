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
) 
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian \partial 4
  g,16 \mark \markup { \musicglyph #"scripts.coda" } es g8^\markup {oboe d'amore} |
  s4 |
  s4 |
  %-------------------------

  as4. g8 as4 g |
  s1 |
  bes'8_\markup {pizz.} es4 bes8 es bes'4.   |
  %\clef bass es4. es8 es8 r4. |
  %-------------------------

  es8. des16 es4.. des16 es4 |
  s1 |
  bes,8 es as, des16 as d8 es bes4    |
  %r1 |
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB }  >>
  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
 \relative c { \voiceC } 
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

