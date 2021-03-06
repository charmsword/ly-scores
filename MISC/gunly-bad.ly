\version "2.18.2"
\header {
  tagline = ""  % removed
}

\new StaffGroup <<
\new Staff 
  \with {instrumentName = #"Flute "} 
  {
\relative 
{\override Staff.TimeSignature #'stencil = ##f \clef "treble" \time 1/1
c'''8 b d, cis es4 e,4.  
\bar "" \break
b8 d32 es as c f fis b4. bes8
a[ c,] b4 cis
c,4. es8  \bar "" \break
f4. f8 f f f f f
} 
}
\new Staff
  {
\relative 
{\override Staff.TimeSignature #'stencil = ##f \clef "treble" \time 1/1
\clef "bass"
<es as bes>1
<es as ces>1
}
}

>>

\layout {
  \context {
    \Score
    defaultBarType = ""
  }
}

%\markup {
% \column {
%   \line {Если бы он остановился, всё было бы забыто.}
%   \line {Но, он не остановился.}
%   \line {Он продолжил по-своему, и он побеждал.}
%   \line {Тогда они позвали меня...}
%   \line {Они потеряли его.}
%}

