\header{
  title = ""
}

\parallelMusic #'(rhMusic lhMusic) {
  \tempo "Largo"
        %   ----------------------------------
            g''2 bes''4 a''~ |                  
            r4 <c' g'> <es' bes'> <f' c''>~|   
	%   --------------------------------- 
            a''1\fermata |                              
            <f' c''>1\fermata |                         
	%  -------------------- 
	\time 6/4 g''2 bes''4 a'' g'' f'' |
	\time 6/4 r4 <c' g'> <es' bes'> <f' c''>  <g' c''> <f' c''> |
	% ----------------------
	\time 4/4 g''1~ | 
	\time 4/4  <c' g' c''>1~ |
	% ----------------------
	g''4 a'' \acciaccatura c'''8 bes''4 f'' | 
	  << { <c' g' c''>4 <f' c''>4 es' d' | } \\
	     { s4 c''2. | } >>
	% ---------------------- %%% почему поменялись мест. партии?
	\time 6/4 <c' g'>4 <es' bes'> <f' c''>1 |
	\time 6/4 g''4 bes'' a''1 |
       % ----------------------
	<c' g'>4 <es' bes'> <f' c''>  <g' c''>2.\fermata |
	g''4 f'' a'' g''2.\fermata |
	% ---------------------
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