\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


\parallelMusic #'(
voiceC
) 
% rhMusic
% lhMusic

{
% Bar 1

\time 5/4 \key a \minor 
 <a' c e>4^"Жен. хор"\glissando <es' g bes>2\glissando <d fis a>2 |
  %-------------------------
  % Bar 2

<a c e>4\glissando <es' g bes>2^\fermata\glissando <d fis a>2 |
 }


\layout {
   \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    }
  }

  \score {
%\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
%>>
}
