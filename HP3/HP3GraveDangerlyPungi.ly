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
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\key g \minor
\time 4/4
\tuplet 3/2 {g4_"rubato"^"пунги"( b c} d2) |
	%--------------------bar2 

	r2. g,4~( |
	%--------------------bar3 

	\tuplet 3/2 {g4 b c) } c4.( b8 | 
	%--------------------bar4 

	as2\glissando g2) |



 }



\new StaffGroup <<
  \new Staff
  \relative c'' {\voiceA}
>>
