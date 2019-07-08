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
voiceC
) 
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian
  <es, a bes>1->^\markup { celesta, pad } |
  bes8_\markup {pizz.} es4 bes8 es bes'4.   |
  \override Glissando.style = #'zigzag g'''1~\glissando |
  \clef bass es1_\markup { bass-guitar } |
  %-------------------------

  <es a bes>1-> |
  bes,8 es as, des16 as d8 es bes4    |
  \cadenzaOn g1\glissando \hideNotes g4 \unHideNotes \cadenzaOff |
  es4. es8~es2 |
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
<< \relative c''' { \voiceA } \\ \relative c' { \voiceB } \\ \relative c' { \voiceD } >>
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

