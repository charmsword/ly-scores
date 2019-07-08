\version "2.18.2"
\header {
  tagline = ""  % removed
}
% \include "lilypond-book-preamble.ly"



\parallelMusic #'(
voiceA 
) 
% voiceD
% rhMusic
% lhMusic

{

  \time 4/4
  bes8-.( bes-. deh--) bes16( deh bes8-.) bes16(\< deh bes deh bes deh)\! |
  %-------------------------

%=========================
 }


%\layout { 
%  \context {
%      \Staff
%      \consists "Pitch_squash_engraver" 
%    }
%  }
\new StaffGroup <<
  \new Staff 
%    \with {instrumentName = #"Струнные " \consists "Pitch_squash_engraver" } 
 \relative c''' { \voiceA } 
%  \new Staff 
%    \with {instrumentName = #"Фортепиано "} 
% \relative c { \voiceC } 
%  \new Staff 
%    \with {instrumentName = #"Электрогитара "} 
%    \relative c {\clef bass  \voiceD }
%  \new PianoStaff <<
%    \new Staff \rhMusic
%    \new Staff \lhMusic
%    >>
>>

