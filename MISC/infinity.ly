\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


\parallelMusic #'(
voiceC
voiceD
) 
% rhMusic
% lhMusic

{
% Bar 1

\time 4/4
<e g b>1~\ppp\<^"Валторны" |
r1 |
  %-------------------------
  % Bar 2

  \cadenzaOn <e g b>\ff\!\> \hideNotes e\ppp\! \unHideNotes \cadenzaOff |
  \cadenzaOn <c e g>^"Трубы"\ppp\< \hideNotes e\ff\! \unHideNotes \cadenzaOff |


 }


\layout {
   \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/256)
    }
  }

  \score {
\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceC }
 \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
   \relative c'' {\voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
}
