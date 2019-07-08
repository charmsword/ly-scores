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
voiceE
) 
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\time 3/2
	s2 e2->\ff des2-> |
	r2 c2 bes4 a4  |
	r2 r4 \tuplet 6/4 {r16\pp c b bes a as} g2 |
\clef "bass"	r2 gis2 f2 |
\clef "bass"	\cadenzaOn bes2~ bes1\< \hideNotes bes16\!\ff \unHideNotes |
 }



\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
%    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
<<	\relative c''' {\voiceA} \\
\relative c''' {\voiceB}  >>
  \new Staff 
	\relative c''' {\voiceC}
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<<    \relative c' { \voiceD } \\
\relative c, { \voiceE } >>
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
