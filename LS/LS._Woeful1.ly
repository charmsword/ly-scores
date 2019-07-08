\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 2/4
}



\parallelMusic #'(
voiceA
voiceB
) 
% rhMusic
% lhMusic

{
  %--------------------bar1 

  \key b \minor \time 12/8
 \xNote f4._"перкуссия" r4. f'4^"синтезатор" c8 f4. |
 \clef "bass" <f, c'>4_"струнные щипковые" <ges des'>8 <f c'>4 r8 <f c'>8 <ges des'>8 <as es'>8 <bes f'>4.-. |
 %--------------------bar2 

\xNote f,4. r4. f'4 c8 f4. |
<f c'>4 <ges des'>8 <f c'>4 <es bes'>8 <f c'>8 <ges des'>8 <as es'>8 <bes f'>4.-. |



 }



\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceA }
  \new Staff
  \relative c' { \voiceB }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
