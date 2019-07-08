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
%voiceD
% rhMusic
% lhMusic



{
f4.( g8 a4.~ a16 bes |
d'2( a |
\clef bass c,2( f |
%-------------------------

a4 g f) r |
bes2 a4) r |
g2 bes) |

%=========================
 }

\layout {
  clip-regions
  = #(list
      (cons
       (make-rhythmic-location 5 1 2)
       (make-rhythmic-location 7 3 4)))
}

%\layout {

\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
    << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
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
%  \context {
%     \Staff
%     \remove Time_signature_engraver 
%   }
%  }
