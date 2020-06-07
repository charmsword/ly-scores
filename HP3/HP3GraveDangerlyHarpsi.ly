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
\partial 8
d8-.(^"клавесин" | 
	d8-. d-. d-. d-. es16-. cis8.)-. r4 |
	%--------------------bar12 

	r2.. d8-.( |
	%--------------------bar13 

	d8-. d-. d-. d-. as'16-. fis8.)-. r4 |
	%--------------------bar14 



 }



\new StaffGroup <<
  \new Staff
  \relative c'' {\voiceA}
>>
