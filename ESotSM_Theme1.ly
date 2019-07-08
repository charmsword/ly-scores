\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 2/4
}

#(set-global-staff-size 17)
\paper {
  % between-system-space = 10\mm % does nothing?
  % between-system-padding = #1 % does nothing?
        %system-count = #4
  % ragged-bottom = ##t
  % ragged-last-bottom = ##t
  % bottom-margin=0\mm
  % top-margin=0\mm
  % paper-height=310\mm
}


\parallelMusic #'(
voiceA
voiceB
voiceC
) 
% rhMusic
% lhMusic

{
	%--------------------partial

      \key es \major \time 6/8 \partial 4.
      s4. |
      \key es \major \time 6/8
      s4. |
      \key es \major \time 6/8
      \clef "bass"  d8_"бас-гитара" es f |
      %--------------------bar1

	g'4~^"фортепиано" g16. g32 bes4~ bes16. g32 |
	s2. |
	es4. d |
      %--------------------bar2 

      \time 9/8
      bes4~ bes16. g32 bes4 g8~ g4. |
        s2. s4. |
	g4. d d8 es f |
	%--------------------bar3 

	g4~ g16 g32 g bes4~ bes16. g32 bes4~ bes16 g32 bes |
	s2. s4. |
	es4. d4. g4 d8 |
	%--------------------bar4 

	es,8^\markup {\italic свингуя } d' c~ c32 g16.~ g4 r8.. f32 es16. c32 |
	\clef "bass" c'4. f,8 g as a4. |
	c4. f4. f4 f8 |
	%--------------------bar5 

	\time 12/8
	c'8 d c g4. r8 fis f es f fis |
	<c es>4. c8 g as a4. <as c>4. |
	c4. f f4~ f16. f32 as4 f8 |
	%--------------------bar6 

	g4. |
	bes4. |
	es4. |





 }


%-------------------------CONTEXT {{{
\layout { 
% ragged-right = ##f 
\context {
\RemoveEmptyStaffContext
}
%    \Score
%    defaultBarType = ""
}
%-------------------------}}} 

\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
\new PianoStaff <<
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceA }
    \new Staff
    \relative c {\voiceB }
  >>
  \new Staff
  \relative c { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
