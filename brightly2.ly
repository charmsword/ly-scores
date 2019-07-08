\version "2.18.2"
\header {
  tagline = ""  % removed
}

\parallelMusic #'(voiceA rhMusic lhMusic) {

	%--------------------bar1 

	\time 6/8 \partial 8
	<as es'>\breve~ |
	\clef "G^8"
	r8 |
	\clef "bass" 
	<as' es'>8 |

	%--------------------bar2 

	<as es'>\breve~ |
	r4 r16 as''16 bes as' g,^"Es(4)" bes es,8 |
	<as, es'>4( <bes' f'>8)-._"As-ионийский" r4 <as es'>8 |
	%--------------------bar3 

	<as es'>\breve~ |
	r8 ges8. fes16^"Bdim" bes des8. r8 |
	<as, es'>4( <f' c'>8)-._"As-мелодический" r4 <as es'>8 |
	%--------------------bar4 

	<as es'>\breve~ |
	as16^"As9" es' as bes es ges, bes des,^"Des-aug" a'8 f |
	<as, es'>4( <bes' fes'>8)-._"As-мелодич. ♭II" r4 <as es'>8 |
	%--------------------bar5 

	<as es'>\breve~ |
	r2 des,16^"Des(6)" f' as, bes |
	<des,, as' f'>4( <f' c'>8)-._"субдомин. к As" r4 <as es'>8 |
	%--------------------bar6 

	<as es'>\breve |
	des16^"Des(4)" bes' ges, as' f,8 ges4 as8 |
	<as, es'>4( <bes' f'>8)-._"As-миксолид." r4 <as es'>8 |

	}


 \score {
   \new StaffGroup <<
    \new PianoStaff <<
      \new Staff = "RH" <<
	\relative c'
	\rhMusic
      >>
      \new Staff = "LH" <<
	\relative c
	\lhMusic
      >>
    >>
     \new Staff
     \with { \remove "Time_signature_engraver" 
     fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)}
     \relative c' {\voiceA}
  >>
  }
