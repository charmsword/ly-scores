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
voiceC 
) 
%voiceB 
%voiceC
%voiceD
% rhMusic
% lhMusic



{
\override Staff.Clef.color = #white
\override Staff.Clef.layer = #-1 
\override Staff.TimeSignature.color = #white
\override Staff.TimeSignature.layer = #-1 
\time 4/4 r1 |
%s1 |
%r1 |

%=========================
 }

\layout {
  clip-regions
  = #(list
      (cons
       (make-rhythmic-location 5 1 2)
       (make-rhythmic-location 7 3 4)))
}

\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
%    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
%  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
    \relative c {\voiceC }
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c \clef bass  {\voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

