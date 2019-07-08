\version "2.18.2"
\include "lilypond-book-preamble.ly"

upper = \relative c' {
  \clef treble
  \key e \minor
  \time 4/4
b8 b' b, b' b, b' b, b' |
b,8 b' b, b' b, b' b, b' |
b,8 b' b, b' b, b' b, b' |
<< { s2 s8 ais4^> ais8^> |} \\ { b,8 b' b, b' b, ais' b, ais' }  >>
}

lower = \relative c {
  \clef bass
  \key e \minor
  \time 4/4
  fis1 |
  e |
  d |
  e |
}

\score {
  \new PianoStaff <<
%    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

