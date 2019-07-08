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

      \time 4/2
      ges''\breve_"высокий пэд" | 
      s4. c''4._"rubato ф-но" g8 d'8 es2 s2 | \bar "||"
      \clef "bass" <as es' as bes>\breve:16_"ф-но и низкий пэд" |

	%--------------------bar2 


     ges\breve |
     a,8. c16 bes2 s2. s2 | \bar "||"
     <as es' as bes>\breve:16 |    
    
      %--------------------bar3 

	r\breve |
      g4 d es2 s1 | \bar "||"
       <as es' ces'>\breve:16 |

      %--------------------bar4 

      <as, c>2 <bes d>2 <c es>2 s2 |
      r4 g4. a8 bes8 g4. s2. | \bar "||"
      <as es' c'>\breve:16 |

      %--------------------bar5 

      ces\breve |
      es8 as, bes ces s1. | \bar "||"
      <as es' ces'>\breve:16 |

      %--------------------bar6 

      f2. ges2. s2 |
      r\breve | \bar "||"
      <des, as' des>2.:16 <es as es'>2.:16 s2 |

      %--------------------bar7 

      r\breve |
      es8 ges4. a16 f c8 bes' ges4. s2. | \bar "||"
      <as es' ces'>\breve:16 | 

 }

%\layout {
%  \context {
%    \Score
%    \override #'(BarNumber break-visibility) = #all-visible
%  }
%}

\score {
\new StaffGroup <<
  \new Staff 
%   \with {instrumentName = #"Струнные "} 
    \relative c' { \voiceA }
  \new Staff 
%   \with {instrumentName = #"Фортепиано "} 
    \relative c' { \voiceB }
  \new Staff 
%   \with {instrumentName = #"Ф-но и низкий пэд "} 
    \relative c { \voiceC }
%  \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
    %\relative c' { \voiceC }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>
}
