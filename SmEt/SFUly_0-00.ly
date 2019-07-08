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
  \time 4/4 \key es \major
  \clef "treble^8" <es a bes>1->^\markup { celesta } |
  <es, a bes>1-> |
  \override Glissando.style = #'zigzag
  \time 4/4 \key es \major
  \clef "treble^8" g''1~\glissando_\markup { pad } |
  %-------------------------

  <es a bes>1-> |
  <es a bes>1-> |
  \cadenzaOn g1\glissando \hideNotes g4 \unHideNotes \cadenzaOff |
  %-------------------------

%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
    << \relative c''' { \voiceA } \\ \relative c''' { \voiceB } >>
  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
    \relative c'' { \voiceC }
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

