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
% rhMusic
% lhMusic

{
  	%--------------------bar1 

\key g \minor
\time 4/4

	\time 6/4
	\partial 8
	d,8^"клавесин" |
	s8|
	s8|

	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d}
	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d}
	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d)} |
	\dynamicUp r2 << {s4\pp\< s2 s4\ff\!} c'1^"паровозный свисток"  >> |
	<d es>1.\startTrillSpan_"альт. флейта" \stopTrillSpan  |



 }



\new StaffGroup <<
  \new Staff
  \relative c'' {\voiceA}
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
    << \relative c' { \voiceB } \\ \relative c' { \voiceC } >>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
