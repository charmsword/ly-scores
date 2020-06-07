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

%------------------------- III часть {{{
\parallelMusic #'(
voiceAa
voiceBb
voiceCc
)

{
	%--------------------bar18 

	g2~^"гобой/англ. рожок?" g8. as16 g( f es d |
	\clef "bass" r4 es,2^"brass-тембр синтезатора" d4 |
	\clef "bass" g2. f4 |
	%--------------------bar19 

	es2. d4 |
	c8^( es d as~) as g'(--\f\<^\markup {\italic accelerando} es-- d-- |
	g2~ g8 g--\f\< es-- d-- |
	%--------------------bar20 

	<<
	  \override Stem.direction = #DOWN { c2) as }
	  \\ \override Stem.direction = #UP { r4 c'8(^\markup {арфа \italic rubato} es d,16 es fis a \tuplet 5/4 { b16 c d es fis } } >> |
	<g, es'>1~ |
	c1~ |
	%--------------------bar21 

	<<
	  { g,,1 }
	  \\ \override Stem.direction = #UP { a''8 b) s2.} >> |
	<g es'>1\!\ff |
	c1\!\ff \bar "||"
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
 \relative c'' { \voiceAa }
 >>
\new Staff
<<
  \global
 \relative c'' { \voiceBb }
 >>
\new Staff
<<
  \global
 \relative c { \voiceCc }
 >>
 >>
%-------------------------}}}
