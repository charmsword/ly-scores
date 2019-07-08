\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"

melody = \relative c' {\key a \major
\time 6/8 b'8 b16 e dis8 a cis b |
	%-------------------------
	gis a b fis4. |
	%-------------------------
	a8. e'16 dis8 a8. cis16 b8 |
	%-------------------------
	gis8. a16 b8 b4._\markup 
	{ \tiny "звук сорванного с пластинки звукоснимателя"}
	\makeClusters {c c' } 
	%-------------------------
	\key d \minor
	\clef bass
	\break
	\time 9/4 <d,,,, d' f a>2. <fis cis' fis ais>1. |
	<d d' f a>2. <fis cis' fis ais>1. |
}
%=========================
\addlyrics { Chit- chat -- te -- ry chip -- munks all |
sin -- ging a -- long |
Hum -- ming their 'Join -- in -- a | 
spring a -- long' song |
}

harmonies = \chords {
  d1 a1 b1:m g2 a2
  d1 a1
  b1:m g1 d2 a2
  b1:m a1
  d1 e1 fis1 fis1
  d1
}


\score {
  <<
  \new Staff \melody
%\header {
% piece = "LS: переход от Loverly Spring к BB"
% }
\harmonies
>>
}
