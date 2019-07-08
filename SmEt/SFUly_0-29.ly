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
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian
  des16->(^\markup {oboe d'amore} bes des8-- es4.--\<)( des8)~\! des4   |
  bes8_\markup {pizz.} es4 bes8 es bes'4.   |
  s1 |
  \clef bass es,4. es8 es8 r4. |
  %-------------------------

  des16--( bes des8 es2--\>) g,16\!( es g8) |
  bes,8 es as, des16 as d8 es bes4    |
  s1 |
  \clef bass es4. es8 es8 r4. |
  %-------------------------

  as4. g8~ g4 g16 es g8 |
  bes8 es4 bes8 es bes'4.   |
  s1 |
  \clef bass es4. es8 es8 r4. |
  %-------------------------

  as4. g8~ g4 des'16 bes des8  \mark \markup { \musicglyph #"scripts.coda" } |
  bes,8 es as, des16 as d8 es bes4    |
  s1 |
  r2 r8 es8 es4 |

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB }  >>
  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
<< \relative c { \voiceC } \\ \relative c { \voiceD } >>
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

