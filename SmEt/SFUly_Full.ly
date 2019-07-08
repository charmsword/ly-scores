\version "2.18.2"
\header {
  tagline = ""  % removed
  title = "Six Feet Under Main Theme"
  subtitle = "музыка к заставке сериала «Клиент всегда мёртв» (2001–2006)"
  composer = "T. M. Newman"
}
% \include "lilypond-book-preamble.ly"


global = {
\key es \major
  \time 4/4
}

#(set-global-staff-size 18)
\paper {
  % between-system-space = 10\mm % does nothing?
  % between-system-padding = #1 % does nothing?
        %system-count = #4
  % ragged-bottom = ##t
  % ragged-last-bottom = ##t
  % bottom-margin=0\mm
  % top-margin=0\mm
  % paper-height=310\mm
}

\parallelMusic #'(
voiceA 
voiceB 
voiceC
voiceD
voiceE
) 
% voiceD
% rhMusic
% lhMusic

{

% \time 4/4 \key es \lydian
% \clef "treble^8" <es a bes>1->^\markup { celesta } |
% <es, a bes>1-> |
% \override Glissando.style = #'zigzag
% \time 4/4 \key es \major
% \clef "treble^8" g''1~\glissando_\markup { пэд } |
% s1 |
% %-------------------------

% <es a bes>1-> |
% <es a bes>1-> |
% g1\glissando g4\glissando |
% s1 |
%-------------------------

  \time 4/2 \key es \major
  \override Glissando.style = #'zigzag g''\breve\glissando |
  <es a bes>\breve->^\markup { челеста, пэд } |
\key es \major  s\breve |
  r\breve |
\key es \major  \clef bass r\breve |
  %--------------------bar1 

  g\breve\glissando |
  <es a bes>\breve-> |
  s\breve |
  r\breve |
  \clef bass r\breve |
  %--------------------bar2 

  \time 4/4
g1~\glissando |
  <es a bes>1->~ |
  s1 |
  g''8_\markup {pizz.} a bes g a bes g r   |
  \clef bass es1_\markup { бас-гитара } |
  %--------------------bar3 

  g1\glissando |
  <es a bes>1-> |
  s1 |
   r1   |
  es4. es8~es2 |
  %--------------------bar4 

  g1~\glissando |
  <es a bes>1~-> |
  s1 |
  g8 a bes g a bes g r   |
  es1 |
  %--------------------bar5 

  g1 | \break
  r1 |
  s1 |
   r1   |
  r1 |
  %--------------------bar6 

  g1~\glissando |
  <es a bes>1~-> |
  s1 |
  bes,8( es4 bes8 es bes'4.   |
  es1 |
  %--------------------bar7 

  g1 |
  <es a bes>1-> |
  s1 |
  bes,8 es as, des16 as d8 es bes4)    |
  es4. es8~es2 |
  %--------------------bar8 

  g1~\glissando |
  <es a bes>1->~ |
  s1 |
  bes8( es4 bes8 es bes'4.   |
  es1 |
  %--------------------bar9 

  g1 |
  <es a bes>1-> |
  s1 |
  bes,8\< es as, des16 as d8 es bes4)    |
  es4. es8~es2 |
  %--------------------bar10 

\time 6/4
  <es, geh>1.\<   |
  <as des>1.^\markup { пэд } |
  s1. |
  s1. |
  \clef bass <as, des>1.\<_"пэд" |
  %--------------------bar11 

\time 4/4
   \mark \markup { \musicglyph #"scripts.segno" } s1\! |
 \clef "treble" des,16(->\!^\markup {oboe d'amore} bes des8-- es4.--\< des8~\! des4   |
  s1 |
  bes8\!(\f_\markup {pizz.} es4 bes8 es bes'4.   |
  es4.\!_"бас-гитара" es8 es8 r4. |
  %--------------------bar12 

  s1 |
  des16-- bes des8 es2)--\> g,16(\! es g8 |
  s1 |
  bes,8 es as, des16 as d8 es bes4)    |
 es4. es8 es8 r4. |
 %--------------------bar13

  s1 |
  as4. g8~ g4 g16 es g8 |
  s1 |
  bes8( es4 bes8 es bes'4.   |
 es4. es8 es8 r4. |
 %--------------------bar14

  s1 |
  as4. g8~ g4) des'16( bes des8  |
  s1 |
  bes,8 es as, des16 as d8 es bes4)    |
  r2 r8 es8 es4 |
  %--------------------bar15 

  s1 |
  es2~ es8 des des16 bes des8 |
  s1 |
  bes8( es4 bes8 es bes'4.   |
  es4. es8 es8 r4. |
  %--------------------bar16 

  s1 |
  es2.) g,16(\> es g8 |
  s1 |
  bes,8 es as, des16 as d8 es bes4)    |
 es4. es8 es8 r4. \mark \markup { \musicglyph #"scripts.coda" } |
 %--------------------bar17
  
  s1 |
  as4. g8 as4 g) |
  s1 |
  bes8( es4 bes8 es bes'4.   |
 es4. es8 es8 r4. |
 %--------------------bar18

  s1 |
  es8.( des16 es4. des8 es4) |
  s1 |
  bes,8 es as, des16 as d8 es bes4)    |
  r2 r8 es8 es4 |
  %--------------------bar19 

  \time 6/8
  <es, as des geh>2.~\<^\markup { пэд } |
  s2.\! |
  bes'8\<^\markup {мандолина, укулеле} a a16 a8. ges8 a8  |
  \improvisationOn \repeat percent 3 {bes'16 bes bes bes }     |
  s2. |
  %--------------------bar20 

<es as des geh>2.    |
  s2. |
 a16 a8. ges8 a a16 a16 a8 |
  \repeat percent 3 {bes16 bes bes bes }   \improvisationOff  |
  r4. es'8 es4\glissando |
  %--------------------bar21 

  \time 4/4
  g''1~\glissando\!^"челеста, пэд" |
  <es' a bes>1-> |
  s1\! |
  bes,8^"pizz."\sp es4 bes8 es bes'4.   |
  es,1 |
  %--------------------bar22 

  g1 |
  <es a bes>1-> |
  s1 |
  bes,8 es as, des16 as d8 es bes4    |
  r1 |
  %--------------------bar23 

  s1 |
  s1 |
  bes,8-.(^"куика" bes-. deh--) bes16( deh bes8-.) bes16(\< deh bes deh bes deh)\! |
  s1 |
  s1 |
  %--------------------bar24 

  s1 \mark \markup { \musicglyph #"scripts.segno" } |
  s1 |
  as1^"струнные arco" |
  c2( des2)\< |
  <as as'>1\< |
  %--------------------bar25 

  s1 |
  as,8.( \mark \markup { \musicglyph #"scripts.coda" } g16^"oboe d'amore" as4 es8. d16 es4 |
  s1 |
  bes8\!^"pizz." es4 bes8 es bes'4.   |
  \clef bass es4.\! es8 es8 r4. |
  %--------------------bar26 

  s1 |
  bes'8. a16 bes4 ges2) |
  s1 |
  bes,8 es as, des16 as d8 es bes4    |
  \clef bass es4. es8 es8 r4. |
  %--------------------bar27 

  \time 6/8
  <es,, as des geh>2.~\<^\markup { пэд } |
  s2. |
  bes'8\<^\markup {мандолина, укулеле} a a16 a8. ges8 a8  |
  \improvisationOn \repeat percent 3 {bes'16 bes bes bes }     |
  s2. |
  %--------------------bar28 

<es as des geh>2.    |
  s2. |
 a16 a8. ges8 a a16 a16 a8 |
  \repeat percent 3 {bes16 bes bes bes }   \improvisationOff  |
  r4. es'8 es4\glissando |
  %--------------------bar29 
  
\time 4/4
  g''1~\!\glissando^"челеста, пэд" |
  <es' a bes>1-> |
  s1\! |
  bes,8^"pizz."\sp es4 bes8 es bes'4.   |
  es1 |
  %--------------------bar30 

  g1 |
  <es a bes>1-> |
  bes,8-.(^"куика" bes-. deh--) bes16( deh bes8-.) bes16(\< deh bes deh bes deh)\! |
  bes,8 es as, des16 as d8 es bes4    |
  es4. es8~es2 |
  %--------------------bar31 

  des,2.(\f->\>\glissando^\markup {пэд} a4)\!\p    |
  s1 |
  s1 |
  s1 |
  \override Glissando.style = #'zigzag \clef bass es,2.\f(->\>\glissando es,4)\!\p |  \bar "||"

 }



\new StaffGroup <<
  \new Staff 
<< \relative c'' { \voiceA } \\ \relative c'' { \voiceB }  >>
  \new Staff 
<< \relative c'' { \voiceC } \\ \relative c { \voiceD } >>
  \new Staff 
    \relative c {\clef bass  \voiceE }


%    \new Staff \lhMusic
%    >>
>>

