\version "2.18.2"
\header {
  tagline = ""  % removed
}


\new Staff 
  \with {instrumentName = #"Flute "} 
  {
\relative 
{\override Staff.TimeSignature #'stencil = ##f \clef "treble" \time 1/1
c'''8_"If he pulled over... it all would've been forgotten." b d, cis es4 e,4.  
\bar "" \break
b8_"But he kept going." d32 es as c f fis b4. bes8
a[ c,] b4 cis_"And he kept winning it his way."
c,4. es8  \bar "" \break
f4. f8_"And they called me in..." f f f f f
<< {s2. <g' as des f>\arpeggio^\fermata^"Synth"  } \\
{ \pitchedTrill
f,1._\startTrillSpan fis
f2\stopTrillSpan_"They lost him."
   } >>
}
}

\layout {
  \context {
    \Score
    defaultBarType = ""
  }
}

\markup {
  \column {
    \line {Если бы он остановился, всё было бы забыто.}
    \line {Но, он не остановился.}
    \line {Он продолжил по-своему, и он побеждал.}
    \line {Тогда они позвали меня...}
    \line {Они потеряли его.}
}
}
