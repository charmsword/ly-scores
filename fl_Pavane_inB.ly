\version "2.18.2"
\header {
  tagline = ""  % removed
  title = "PAVANE"
  subtitle = "Op. 50"
  composer = "Gabriel Faure"
}
% \include "lilypond-book-preamble.ly"


global = {
\key g \major
  \time 2/4
}

	%%%{{ PREAMBLE
#(define (naturalize-pitch p)
   (let ((o (ly:pitch-octave p))
         (a (* 4 (ly:pitch-alteration p)))
         ;; alteration, a, in quarter tone steps,
         ;; for historical reasons
         (n (ly:pitch-notename p)))
     (cond
      ((and (> a 1) (or (eq? n 6) (eq? n 2)))
       (set! a (- a 2))
       (set! n (+ n 1)))
      ((and (< a -1) (or (eq? n 0) (eq? n 3)))
       (set! a (+ a 2))
       (set! n (- n 1))))
     (cond
      ((> a 2) (set! a (- a 4)) (set! n (+ n 1)))
      ((< a -2) (set! a (+ a 4)) (set! n (- n 1))))
     (if (< n 0) (begin (set! o (- o 1)) (set! n (+ n 7))))
     (if (> n 6) (begin (set! o (+ o 1)) (set! n (- n 7))))
     (ly:make-pitch o n (/ a 4))))

#(define (naturalize music)
   (let ((es (ly:music-property music 'elements))
         (e (ly:music-property music 'element))
         (p (ly:music-property music 'pitch)))
     (if (pair? es)
         (ly:music-set-property!
          music 'elements
          (map (lambda (x) (naturalize x)) es)))
     (if (ly:music? e)
         (ly:music-set-property!
          music 'element
          (naturalize e)))
     (if (ly:pitch? p)
         (begin
           (set! p (naturalize-pitch p))
           (ly:music-set-property! music 'pitch p)))
     music))

naturalizeMusic =
#(define-music-function (parser location m)
   (ly:music?)
   (naturalize m))

	%%%}}

\parallelMusic #'(
voiceC
) 
% rhMusic
% lhMusic

{
  	%%{{{EXPOSITION
  %--------------------bar1 

	\compressFullBarRests
\tempo "Allegro moderato" \key fis \minor  \time 4/4 
\relative c'      r1 |
      %--------------------bar2 

      fis4~( fis8. gis16 a4~ a8. b16 |
      %--------------------bar3 

      a8 gis a fis gis4~ gis8. a16 |
      %--------------------bar4 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar5 

	cis2.) r4 |
	%--------------------bar6 

	cis'4~( cis8. d16 e4~ e8. fis16 |
	%--------------------bar7 

	e8 d e cis d4~ d8. e16 |
	%--------------------bar8 

	d8 cis d b cis4. bis8 |
	%--------------------bar9 

	cis2.) r4 |
	%--------------------bar10 

	fis,4~( fis8. gis16 a4~ a8. b16 |
	%--------------------bar11 

	a8 gis a fis gis4~ gis8. a16 |
	%--------------------bar12 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar13 

	cis2.( r4 |
	%--------------------bar14 

	a'4~( a8. b16\< cis4~ cis8. d16 |
	%--------------------bar15 

	cis8 b cis a\! b4~ b8. cis16 |
	%--------------------bar16 

	a8\> gis a fis fis4 eis4 |
	%--------------------bar17 

	fis2\!\p) r2 |
	%--------------------bar18 

	cis4~(\p^\markup { \fontsize #6 \bold A } cis8. dis16 eis4 \tuplet 3/2 { dis8 eis fis } |
	%--------------------bar19 

	gis8 fis a gis eis4. dis8) |
	%--------------------bar20 

	cis4~( cis8. dis16 e4) \breathe \tuplet 3/2 {dis8( e fis} |
	%--------------------bar21 

	gis8 fis a gis e4. dis8 |
	%--------------------bar22 

	cis4) \breathe \tuplet 3/2 {bis8( cis dis} e4. dis8) |
	%--------------------bar23 

	cis4( \tuplet 3/2 {bis8 cis dis} e4. dis8 |
	%--------------------bar24 

	gis2. \breathe \tuplet 3/2 {fis8( gis fis)} |
	%--------------------bar25 

	eis1(\>\trill |
	%--------------------bar26 

	\acciaccatura {dis16 eis}  eis'1\!\trill\> |
	%--------------------bar27 

	\acciaccatura {dis16 e} fis4~(\p\!^\markup {\fontsize #6 \bold B } fis8. \breathe gis16 a4~ a8. b16) |
	%--------------------bar28 

	a8 gis a fis gis4~ gis8. a16 |
	%--------------------bar29 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar30 

	cis2.) r4 |
	%--------------------bar31 

	\ottava #1 
	cis'4~( cis8. d16 e4~ e8. fis16 |
	%--------------------bar32 

	e8 d e cis d4~ d8. e16 |
	%--------------------bar33 

	d8 cis d b cis4. bis8 |
	%--------------------bar34 

	\ottava #0 cis2.) r4 |
	%--------------------bar35 

	fis,4~(^\markup {\fontsize #6 \bold C } fis8. gis16 a4~ a8. b16 |
	%--------------------bar36 

	a8 gis a fis gis4~ gis8. a16 |
	%--------------------bar37 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar38 

	cis2.( r4 |
	%--------------------bar39 

	a'4~(\< a8. b16 cis4~ cis8. d16 |
	%--------------------bar40 

	cis8\mf\! b cis a b4~ b8. cis16 |
	%--------------------bar41 

	a8\> gis a fis fis4 eis4 |
	%--------------------bar42 

	fis2\p)\! r2 |

	%%}}}
	%%{{{RAZRABOTKA
	%--------------------bar43 
	
	fis,4.->\f^\markup {\fontsize #6 \bold D } d''8( cis16 b a gis a8 gis) |
	%--------------------bar44 

	gis8( fis e) r8 r2 |
	%--------------------bar45 

	R1*2
	%--------------------bar47 

	fis,4.->\f d''8( cis16 b a gis a8 gis) |
	%--------------------bar48 

	gis8( fis e) r8 r2 |
	%--------------------bar49 

	R1*2
	%--------------------bar51 

	e,4.\f-> c''8( b16 a g fis g8 fis) |
	%--------------------bar52 

	fis8( e d) r8 r2 |
	%--------------------bar53 

	R1*2
	%--------------------bar55 

	d,4.\f-> bes''8( a16 g f e f8 e) |
	%--------------------bar56 

	e8( d c) r8 r2 |
	%--------------------bar57 

	R1*3
	%--------------------bar60 

	cis4~(\p^\markup {\italic dolce} cis8. dis16 eis4 \tuplet 3/2 {dis8 eis fis} |
	%--------------------bar61 

	gis8 fis a gis eis4. dis8 |
	%--------------------bar62 

	cis4) r4 r2 |
	%--------------------bar63 

	R1*3
	%--------------------bar66 

	gis2.\< \tuplet 3/2 {fis8( gis fis)} |
	%--------------------bar67 

	eis1\!\sf\trill\>( |
	%--------------------bar68 

	\acciaccatura {dis16 eis} eis'1\trill\!\p |
	%--------------------bar69 

	\acciaccatura {dis16 eis} fis4~(\p\!^\markup {\fontsize #6 \bold F } fis8. \breathe gis16 a4. b8) |
	%--------------------bar70 

	a8 gis a fis gis4~ gis8. a16 |
	%--------------------bar71 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar72 

	cis2.) r4 |
	%--------------------bar73 

	\ottava #1 
	cis'4~( cis8. d16 e4~ e8. fis16 |
	%--------------------bar74 

	e8 d e cis d4~ d8. e16 |
	%--------------------bar75 

	d8 cis d b cis4. bis8 |
	%--------------------bar76 

	\ottava #0 cis8) r8 r4 r2 |
	%--------------------bar77 

	fis,4~(^\markup {\fontsize #6 \bold G } fis8. gis16 a4~ a8. b16 |
	%--------------------bar78 

	a8 gis a fis gis4~ gis8. a16 |
	%--------------------bar79 

	gis8 fis gis e fis4~ fis8. eis16 |
	%--------------------bar80 

	cis2.( r4 |
	%--------------------bar81 

	a'4~(\< a8. b16 cis4~ cis8. d16 |
	%--------------------bar82 

	cis8\mf\! b cis a b4~ b8. cis16 |
	%--------------------bar83 

	a8 gis a fis fis4\< eis4 |
	%--------------------bar84 

	fis2.)\!\sfz\> r4 |
	%--------------------bar85 

	r1\! |
	%--------------------bar86 

	r1 |
	%--------------------bar87 

	a,8(\p gis a fis) fis4( eis) |
	%--------------------bar88 

	fis1^\markup {\fontsize #6 \bold H } |
	%--------------------bar89 

	R1*6 |
	%--------------------bar90 

	fis4\pp~(^\markup {\fontsize #6 \bold J } fis8. gis16 fis4~ fis8. gis16 |
	%--------------------bar91 

	fis4~ fis8. gis16 fis4~ fis8. gis16 |
	%--------------------bar92 

	fis4~ \tuplet 3/2 {fis8) \breathe gis( fis} gis8 fis~ \tuplet 3/2 {fis8 gis fis}|
	%--------------------bar93 

	gis8 fis~ \tuplet 3/2 {fis8 gis fis} \tuplet 3/2 {gis a b} \tuplet 3/2 {cis dis eis)} |
	%--------------------bar94 

	fis1\cresc~ |
	%--------------------bar95 

	fis4 \breathe gis-.( gis(\mf\> a)) |
	%--------------------bar96 

	cis1\!\p\>~ |
	%--------------------bar97 

	cis1~\pp\> |
	%--------------------bar98 

	cis1~\! |
	%--------------------bar99 

	cis4\! r4 r2 |
	%--------------------bar100 

	r1 | \bar "||"




	%%}}}
      }
   



      \score {
    \transpose fis gis
%\new StaffGroup <<
% \new Staff 
%   \with {instrumentName = #"Струнные "} 
%   << \relative c'' { \voiceA } \\ \relative c' { \voiceB } >>
  \new Staff 
    %\with {instrumentName = #"Фортепиано "} 
    \relative c' 
    { \voiceC }
% \new Staff 
%   \with {instrumentName = #"Электрогитара "} 
%   \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
%>>
}
