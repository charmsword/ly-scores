\version "2.18.2"
\header {
  tagline = ""  % removed
}

\parallelMusic #'(voiceA rhMusic lhMusic) {

	%--------------------bar1 

	\time 6/8
	<a'' gis>2.:64~ |
	f16-^ f-^ d-^ f-^ d-^ f-^ f32 e f e d8-^ f-^ |
	a8-^ a-^ a-^ cis-^ a-^ e'-^ |

	%--------------------bar2 

	<a gis>4:64 r2 |
	f16-^ f-^ d-^ f-^ d-^ f-^ f32 e f e d8-^ f-^ |
	a,8-^ a-^ a-^ cis-^ a-^ e'-^ |
	%--------------------bar3 

	s2 f4~ |
	f16-^ f-^ d-^ f-^ d-^ f-^ f32 e f e d8-^ f-^ |
	a,8-^ a-^ a-^ cis-^ a-^ e'-^ |
	%--------------------bar4 

	f4~ f16 e32 f e8 a,4 |
	f16-^ f-^ d-^ f-^ d-^ f-^ b,32 cis b cis a8-^ a-^ |
	a,8-^ a-^ a-^ cis-^ a-^ a-^ |

	}


 \score {
   \new StaffGroup <<
    \new PianoStaff 
    <<
      \new Staff = "RH" 
    \with {instrumentName = #"альт"} 
      <<
	\relative c'
	\rhMusic
      >>
      \new Staff = "LH" 
    \with {instrumentName = #"виол."} 
      <<
	\relative c'
	\lhMusic
      >>
    >>
     \new Staff
     \with { \remove "Time_signature_engraver" 
     fontSize = #-3
     instrumentName = #"EWI"
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)}
     \relative c' {\voiceA}
  >>
  }
