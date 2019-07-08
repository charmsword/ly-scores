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
voiceB
voiceC
voiceD
voiceE
) 
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\key g \minor
\time 4/4
	%--------------------bar7 		

	r2 d16( cis es8)-. r4 |
	r2 bes'16( a as8)-. r4 |
	\clef "bass" g'1~ |
	g4_"литавры" g r2 | 
	%--------------------bar8 

	r2 d16( cis es8)-. r4 |
	r2 bes16( a as8)-. r4 |
	g1~ |
	g4 g r2 | 
	%--------------------bar9 

	r2 g16( fis as8)-. r4 |
	r2 es'16( d cis8)-. r4 |
	g1 |
	g4 g r2 | 
	%--------------------bar10 

	r2 g16( fis as8)-. r4 |
	r2 es16( d cis8)-. r4 |
	g,1~ |
	g4 g r2 | 
	%--------------------bar11 



 }



\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<< \relative c' { \voiceB } \\ \relative c { \voiceC } >>
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<< \relative c { \voiceD } \\ \relative c { \voiceE } >>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
