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
voiceD
voiceE
) 
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\key g \minor
\time 4/4
\tuplet 3/2 {g4_"rubato"^"пунги"( b c} d2) |
	s1 |
\clef "bass"	s1 |
	%--------------------bar2 

	r2. g,4~( |
	s1 | 
	s1 |
	%--------------------bar3 

	\tuplet 3/2 {g4 b c) } c4.( b8 |
	s1 |
	as2(^"контрабасы" d,4)-. r4 |

	%--------------------bar4 

	as2\glissando g2) |
	s1 |
	as'2( d,4)-. r4 |
	%--------------------bar5 

	\tuplet 3/2 {r4 g( b } c4) d8.( c16 |
	r2 bes'2~^"фаготы" |
	as'2( d,4)-. r4 |
	%--------------------bar6 

	b4. as4.\>) r4 |
	bes2 bes2 |	
	as'2( d,4)-. r4 |
	%--------------------bar7 		

 }



\new StaffGroup <<
  \new Staff
  \relative c'' {\voiceA}
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<< \relative c { \voiceD } \\ \relative c { \voiceE } >>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
