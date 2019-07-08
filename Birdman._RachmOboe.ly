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
	\time 4/4 \key e \minor 
\slurUp	e2~(^"гобой"_\markup {\italic {meno mosso}} e8 b' g b |
	%--------------------bar2 

	e,2)~ e8(_\markup {\italic {poco cresc.}} b' g b | \noBreak
	%--------------------bar3 

	e,8 b' g b e,2~)_\markup {\italic {dim.}} | \noBreak
	%--------------------bar4 

	e8( b' g b e, g b e) |

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
