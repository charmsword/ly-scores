%-------------------------HEADER {{{
\version "2.18.2"
\header {
  tagline = ""  % removed
% title = "Main Title"
% subtitle = "музыка из кинофильма «Вечное сияние чистого разума» (2004)"
% composer = "Jon Brion"
}
% \include "lilypond-book-preamble.ly"
%-------------------------}}}

global = {
\key c \minor
  \time 4/4
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

arpaC = \relative c'' { \repeat percent 4 { c16 es g c } }
arpaDes = \relative c'' { \repeat percent 4 { des,16 f g b } }

%-------------------------I часть {{{
\parallelMusic #'(
voiceA 
voiceB 
)

{
%  	%--------------------bar1 
%	\time 4/4
%	\arpaC |
%	r1 |
%	%--------------------bar2  
%
%	\arpaC |
%	r1 |
%	%--------------------bar3 
%
%	\arpaC |
%	c16( g8.) c16( g8.) c16( g8.) c16( g8.) |
%	%--------------------bar4 
%
%	\arpaDes |
%	des'16( as8.) des16( as8.) des16( as8.) des16( as8.)|
%	%--------------------bar5 
%
%	\arpaC |
%	c16( g8.) c16( g8.) c16( g8.) c16( g8.) |
%	%--------------------bar6 
%
%	\arpaDes |
%	des'16( as8.) des16( as8.) des16( as8.) des,16.( es32 f g as a |

	\partial 4
	des16^"арфа" f g b |
	des,16.(_"кларнет" es32 f g as a |
	%--------------------bar7 

	\repeat percent 4 { bes,16 es g bes  } |
	bes2.( c4 |
	%--------------------bar8 

	\repeat percent 4 { c,16 es f a } |
	a2) f4( g |
	%--------------------bar9 

	\repeat percent 4 { des,16 es f as } |
	as4..-- g32 f es4 f) |
	%--------------------bar10 

	\time 6/4
	c,16 es f g c,16 es f g \repeat percent 4 { b, es f g } |
	g4..( es32 c <g as>1)\trill |
}
%-------------------------}}} 
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
%-------------------------STAVES {{{
\new StaffGroup <<
\new Staff
<<
  \global
 \relative c'' { \voiceA  }
 >>
\new Staff
<<
  \global
\relative c'' { \voiceB  }
>>
 >>
%-------------------------}}}
