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
voiceC
) 
% rhMusic
% lhMusic

{
  	%--------------------bar1 

      \time 6/8
      d''8 bes ges d ges bes | \bar "||"
      es ges bes c bes ges | \bar "||"
\clef "bass"      d'2. | \bar "||"

	%--------------------bar2 


     d8 bes ges d ges bes | \bar "||"
     es ges bes c bes ges | \bar "||"
     \clef "bass" r4._"es-дорийский" <es, ges bes d>4. | \bar "||"
    
      %--------------------bar3 

	d8 bes ges d ges bes | \bar "||"
      es ges bes c bes ges | \bar "||"
      r4._"es-дорийский ♭V" <es f ges a>4. | \bar "||"

      %--------------------bar4 

      d8 bes ges d ges bes | \bar "||"
      es ges bes c bes ges | \bar "||"
      r4._"As-лидийский" <as, c es as>4. | \bar "||"


 }



\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
    << \relative c' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
    \relative c { \voiceC }
%  \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
    %\relative c' { \voiceC }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
