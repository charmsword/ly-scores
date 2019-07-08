\header{
  title = "A scale in LilyPond"
}

rhMusic = \new Voice  { %PIANO R-H
	g''2 bes''4 a''~ | a''1 |
	\time 6/4 g''2 bes''4 a'' g'' f'' |
	\time 4/4 g''1~ | 
	g''4 a'' \acciaccatura c'''8 bes''4 f'' | 
	\time 6/4 g'' bes'' a''1 |
	g''4 f'' a'' g''2.\fermata |
    }
lhMusic = \new Voice   { %PIANO L-H
	r4 <c' g'> <es' bes'> <f' c''>~ | <f' c''>1 |
	\time 6/4 r4 <c' g'> <es' bes'> <f' c''>  <g' c''> <f' c''>
	\time 4/4  <c' g' c''>1~ |
	  << 
	      {  %1 voice
		  <c' g' c''>4 <f' c''>4 es' d' |
	      }
	      {  %2 voice
		 s4 c''2. |
	      }
	    >>
	\time 6/4 <c' g'>4 <es' bes'> <f' c''>1 |
	<c' g'>4 <es' bes'> <f' c''>  <g' c''>2.\fermata |
    }

  \score {
    \new PianoStaff <<
      \new Staff = "RH" <<
	\key c \minor
	\rhMusic
      >>
      \new Staff = "LH" <<
	\key c \minor
	\lhMusic
      >>
    >>
  }
