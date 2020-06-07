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

\key d \minor
\time 6/4
 r4^"Флейта" d'2:32_"frull." r4 f2:32|
  <a' d f>8^"Скрипки" <a d f> <a d f>  <a d f> <a d f> <a d f>
  <a d f>8 <a d f> <a d f>  <a d f> <a d f> <a d f> |
  d8_"Кларнет, альт" f4 cis8 d16 e f8 d8 f4 cis8 d16 e f8 |
	%--------------------bar2 

 r4 des2:32 r4 bes2:32|
  <a d f>8 <a d f> <a d f>  <a d f> <a d f> <a d f>
  <a d f>8 <a d f> <a d f>  <a d f> <a d f> <a d f> |
  d8 f4 cis8 d16 e f8 d8 f4 cis8 d16 e f8 |
  	%--------------------bar3 

	\xNotesOn a,1^>\>^"Тарелки" r2 |	
	<b d g>8 <b d g>  <b d g> <b d g> <b d g> <b d g> 
	<b d g>8 <b d g>  <b d g> <b d g> <b d g> <b d g> |
	r2 r8 d16 e f8 e cis f e cis |
	%--------------------bar4 

	r1.\! \xNotesOff |
	<b d g>8 <b d g>  <b d g> <b d g> <b d g> <b d g> 
	<b d g>8 <b d g>  <b d g> <b d g> <b d g> <b d g> |
	d4 r4. d16 e f8 e cis f e cis |

 }



\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
%    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
	\relative c'' {\voiceA}
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceB }
  \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
    \relative c' { \voiceC }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
