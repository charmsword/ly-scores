\version "2.18.2"
\header {
  tagline = ""  % removed
}


melody = {\key c \minor
\time 6/4 \bar ".|:" <c' es' g'>8^"маримба" r c' <c' f' a'> r es' <c' es' g'>4 r g |
%-------------------------
<g es' g'> c'8 <c' f' a'> c' <c' es'> <c' es' g'> r r4 r8 g \bar ":|."
%-------------------------
 \cadenzaOn des''1^"глиссандо EWI"\glissando \hideNotes g2 \unHideNotes \cadenzaOff
}


\score {
  \new Staff \melody
%\header {
% piece = "пэттерн Маримбы в Already Dead"
% }
}
