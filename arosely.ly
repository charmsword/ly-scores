\version "2.18.2"
\header {
  tagline = ""  % removed
}

\parallelMusic #'(voiceA rhMusic lhMusic) {

	%--------------------bar1 

	\time 6/8 
	as''4.\glissando^"синт. тембр" bes4.~ |
	es'8^"As-лидийский" g16 es d as es' d^"B-миксолид." f g as8 |
	\clef "bass"
	as4. bes4. |
	%--------------------bar2 

	bes4.\glissando as4. |
	r16 as16 es^"f-дорийский" a, a8 r16 es' es c c8 |
	f2. |
	%--------------------bar3 

	r8 c,,4^"EWI"~ c4.~ |
	es8 g16 es d as es' d f g as8 |
	as4. bes4. |
	%--------------------bar4 

	c8\glissando d4~ d4. |
	r16 as16 es a, a8 r16 es' es c c8 |
	f2. |

	}


 \score {
   \new StaffGroup <<
    \new PianoStaff 
    \with { instrumentName = #"Маримба" }
    <<
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
     instrumentName = #"Пэд"
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)}
     \relative c' {\voiceA}
  >>
  }
