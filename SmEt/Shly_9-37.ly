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
%-------------------------МАЖОР:

c4. bes8 c'4. bes8 |
<d f>2 <c a'> |
\clef bass <es, es'>2 <f f'> |

%-------------------------

a2 f4. g8 |
<es a>2 <d f> |
<bes, bes'> <c c'> |

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

