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
  %--------------------bar1 
  \clef "bass"
\key c \minor
<es g c>8-^ <es g c>-^ <d fis b>-^ <d fis b>-^ <es g c>-^ <es g c>-^ <e gis cis>-^ <e gis cis>-^ |

%--------------------bar2 

<es g c>-^ <es g c>-^ <fis b dis>-^ <fis b dis>-^ <f bes d>-^ <f bes d>-^ <e a cis>-^ <e a cis>-^ |
  %--------------------bar3 

  <f as c>-^ <f as c>-^ <e g b>-^ <e g b>-^ <f as c>-^ <f as c>-^ <g b d>-^ <g b d>-^ | 
%--------------------bar4 

<f as c>-^ <f as c>-^ <as ces es>-^ <as ces es>-^ <g bes d>-^ <g bes d>-^ <fis a cis>-^ <fis a cis>-^ |
}

%\chords {
%  g2.:m es4:m
%  g4:m es4:m g2:m 
%  g1:m
%  es2:m g2:m
%}


\layout {
   \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
    }
  }

  \score {

%\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >-^>-^
  \new Staff 
    \relative c { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >-^>-^
%>-^>-^
}
