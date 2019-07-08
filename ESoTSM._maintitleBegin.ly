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
arpaDes = \relative c'' { \repeat percent 4 { des16 f g b } }

%-------------------------I часть {{{
\parallelMusic #'(
voiceA 
voiceB 
)

{
  	%--------------------bar1 
	\time 4/4
 	c16^"арфа" es g c \repeat percent 3 { c,16 es g c }  |
	r1 |
	%--------------------bar2  

	\arpaC |
	r1 |
	%--------------------bar3 

	\arpaC |
	c16(^"кларнет" g8.) c16( g8.) c16( g8.) c16( g8.) |
	%--------------------bar4 

	\arpaDes |
	des'16( as8.) des16( as8.) des16( as8.) des16( as8.)|
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
