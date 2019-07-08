%%% SNIPPETS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ====================
% = segnos and codas =
% ====================
segno = \mark \markup { \musicglyph #"scripts.segno" } % segno as a mark
coda = \mark \markup { \musicglyph #"scripts.coda" } % coda as a mark

% ====================
% = misc. =
% ====================
%impon =  \improvisationOn
%impoff =  \improvisationOff 
%cadon =  \cadenzaOn  \hideNotes 
%cadoff =  \unHideNotes \cadenzaOff
%zig =  \override Glissando.style = #'zigzag
%cls =  \makeClusters % Почему-то не работает, вызывает ошибку unexpected \header в теле партитуры

%===============================================================
%%% CONTEXTS ===================================================
%===============================================================
%\layout {
%  \context {
%      \Staff
%      \consists "Pitch_squash_engraver"
%   \Score
%   defaultBarType = ""
%   \override Staff.TimeSignature #'stencil = ##f 
%   \time 1/1
%   }
% }
