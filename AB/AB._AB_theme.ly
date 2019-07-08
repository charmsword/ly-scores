\header{
  title = "A scale in LilyPond"
}

<<
  \relative {
    \key c \minor
    g''2 bes4 a g f g2~ | 
    g4 a \acciaccatura c8 bes4 f g bes a2
    \bar "|."
  }
  \relative {
    \key c \minor
    r4 <c' g'> <es bes'> <f c'> | <g c> <f c'> <c g' c>2~ |
    << { 
      \voiceOne 
    <c g'>4~ f4 es d |} 
      \new Voice {
	\voiceTwo c'1
      }
    >>
    <c g'> <es bes'> <f c'>2 |
  }
>>
