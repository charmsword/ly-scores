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

\key g \minor
\time 4/4
\tuplet 3/2 {g4_"rubato"^"пунги"( b c} d2) |
	s1 |
	s1 |
	s1 |
\clef "bass"	s1 |
	%--------------------bar2 

	r2. g,4~( |
	s1 |
	s1 |
	s1 | 
	s1 |
	%--------------------bar3 

	\tuplet 3/2 {g4 b c) } c4.( b8 |
	s1 |
	s1 |
	s1 |
	as2(^"контрабасы" d,4)-. r4 |

	%--------------------bar4 

	as2\glissando g2) |
	s1 |
	s1 |
	s1 |
	as'2( d,4)-. r4 |
	%--------------------bar5 

	\tuplet 3/2 {r4 g( b } c4) d8.( c16 |
	s1 |
	s1 |
	r2 bes'2~^"фаготы" |
	as'2( d,4)-. r4 |
	%--------------------bar6 

	b4. as4.\>) r4 |
	s1 |
	s1 |
	bes2 bes2 |	
	as'2( d,4)-. r4 |
	%--------------------bar7 		

	r8 g2.. \! |
	r2 d16( cis es8)-. r4 |
	r2 bes16( a as8)-. r4 |
	g1~ |
	g4_"литавры" g r2 | 
	%--------------------bar8 

	s1 |
	r2 d16( cis es8)-. r4 |
	r2 bes16( a as8)-. r4 |
	g1~ |
	g4 g r2 | 
	%--------------------bar9 

	s1 |
	r2 g16( fis as8)-. r4 |
	r2 es'16( d cis8)-. r4 |
	g1 |
	g4 g r2 | 
	%--------------------bar10 

	r2.. d'8-.(^"клавесин" |
	r2 g16( fis as8)-. r4 |
	r2 es16( d cis8)-. r4 |
	g,1~ |
	g4 g r2 | 
	%--------------------bar11 

	d8-. d-. d-. d-. es16-. cis8.)-. r4 |
	r2 g16( fis as8)-. r4 |
	r2 es16( d cis8)-. r4 |
	g1 |
	g4 g r2 | 
	%--------------------bar12 

	r2.. d8-.( |
	r2 g16( fis as8)-. r4 |
	r2 es16( d cis8)-. r4 |
	g1~ |
	g4 g r2 | 
	%--------------------bar13 

	d8-. d-. d-. d-. as'16-. fis8.)-. r4 |
	r2 d16( cis es8)-. r4 |
	r2 bes16( a as8)-. r4 |
	g1 |
	g4 g r2 | 
	%--------------------bar14 

	r2.. d,8( |
	r2 d16( cis es8)-. r4 |
	r2 bes16( a as8)-. r4 |
	g1 |
	g4 g r2 | 
	%--------------------bar15 	

	\time 6/4
	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d}
	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d}
	\tuplet 3/2 {d'8 cis, d} \tuplet 3/2 {es'8 cis, d)} |
	\dynamicUp r2 << {s4\pp\< s2 s4\ff\!} c1  >> |
	<d es>1.\startTrillSpan_"альт. флейта" \stopTrillSpan  |
	s1. |
	s1. |



 }



\new StaffGroup <<
  \new Staff
  \relative c'' {\voiceA}
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
    << \relative c' { \voiceB } \\ \relative c' { \voiceC } >>
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
<< \relative c { \voiceD } \\ \relative c { \voiceE } >>
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
