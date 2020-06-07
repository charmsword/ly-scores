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
voiceD
voiceE
) 
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\key g \minor
\time 4/4
	%--------------------bar3 

	s1 |
	\clef "bass" as2(^"контрабасы" d,4)-. r4 |

	%--------------------bar4 

	s1 |
	as'2( d,4)-. r4 |
	%--------------------bar5 

	r2 bes'2~^"фаготы" |
	as'2( d,4)-. r4 |
	%--------------------bar6 

	bes2 bes2 |	
	as'2( d,4)-. r4 |



 }



\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<< \relative c { \voiceD } \\ \relative c { \voiceE } >>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
