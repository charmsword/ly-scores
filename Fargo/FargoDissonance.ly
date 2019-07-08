\version "2.18.2"
\include "lilypond-book-preamble.ly"

<<
\new Staff \with {
instrumentName = #"Хардангер "}
{
 d'''1^\flageolet }
\new Staff \with {
  instrumentName = #"Фагот "}
{
\clef "bass"
a,2 e |
}
>>


