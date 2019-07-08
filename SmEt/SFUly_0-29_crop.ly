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
) 
% voiceD
% rhMusic
% lhMusic

{
  \time 4/4 \key es \lydian
  des,16->(^\markup {oboe d'amore} bes des8-- es4.--\<)( des8)~\! des4   |
  %-------------------------

  des16--( bes des8 es2--\>) g,16\!( es g8) |
  %-------------------------


%=========================
 }



\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные "} 
 \relative c''' { \voiceA } 
%  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
%<< \relative c { \voiceC } \\ \relative c { \voiceD } >>
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

