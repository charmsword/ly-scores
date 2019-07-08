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
\time 4/4 s1 |
s1 |
\clef bass c,2( f |
%-------------------------
s1 |
s1 |
g2 bes4) r |
%-------------------------

s1 |
s1 |
\clef bass c,2( f |
%-------------------------
s1 |
s1 |
g2 bes4) r |
%-------------------------

d2 a|
s1 |
c,2( f |

%-------------------------

bes a4 r4 |
s1 |
g2 bes4) r |

%-------------------------

d2 a |
s1 |
c,2( f |

%-------------------------

bes4 g a r |
r2 r8 d16c bes'8 a |
g2 bes4) r4 |

%-------------------------

f'4. g8 a4.~ a16 bes |
d2 a |
c,2 f |

%ПРОПУСКАЕМ НЕСКОЛЬКО ТАКТОВ
%-------------------------МАЖОР:

c,4. bes8 c'4. bes8 |
<d, f>2 <c a'> |
<es es'>2 <f f'> |

%-------------------------

a2 f4. g8 |
<es a>2 <d f> |
<bes bes'> <c c'> |

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

