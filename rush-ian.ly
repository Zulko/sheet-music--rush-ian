% OPEN WITH LILYPOND

\version "2.12.3"

%{
*
* BACH ARIA
* Original author unknown (attributed to Fernando Sor, 1778-1839)
* This arrangement for piano by A. de la Marmotte is licensed under a
* Creative Commons Attribution 3.0 Unported License.
*
*
* The full text of the licence can be found here:
* http://creativecommons.org/licenses/by/3.0/
*
* In a nutshell, YOU ARE FREE to share (copy, distribute, transmit),
* to remix or adapt the work, and to make commercial use of the work.
*
* BUT I ask you to cite "A. de la Marmotte" as the original author
* if you do any of the things above, just so that I can see what this
* little piece is becoming.
*
* Ideas for improvements are most welcome !
*
%}

% Version 0 - 05/04/2014

\header {
  title = "Rush-ian"
  subtitle = "A rush-ed Russianity"
  arranger=""
  composer = "Zulko, Boston, 2023"
  tagline = "Made with Lilypond. Published under Creative Commons Attribution Licence (CC BY 3.0 US)"
}

\markup \vspace #2 % change this value accordingly

\paper {

  system-system-spacing =
    #'((basic-distance . 18) 
       (minimum-distance . 8)
       (padding . 1)
       (stretchability . 60)) 
}

global = {
  \key a \minor
}


right = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
}{
  \global
    \repeat tremolo 4 { c''16 e''}
    r8 <d'' f''>8 <c'' e''>8 <b' dis''>8
    \repeat tremolo 4 { c''16 e''}
    r8 <d'' f''>8 <c'' e''>8 <b' dis''>8
    
    <d'' f''>8 <c'' e''>8 \acciaccatura{<c'' e''>16 f''16} <c'' e''>8 <b' dis''>8
    <d'' f''>8 <c'' e''>8 \acciaccatura{<c'' e''>16 f''16} <c'' e''>8 <b' dis''>8
    <c'' e''>4-. <c'' a''>4-.
    \repeat tremolo 4 { e''16 c'''}
    
    <d''' f''>8 <c''' e''>8 \acciaccatura{c'''16 d'''16} <c''' e''>8 <b'' d''>8
    <d''' f''>8 <c''' e''>8 \acciaccatura{c'''16 d'''16} <c''' e''>8 <b'' d''>8
    <c''' e''>8 <b'' d''>8 \acciaccatura{b''16 c'''16 } <b'' d''>8 <c'' a''>8 
    <b'' d''>8  <c''' e''>8 <b'' d''>8 <c'' a''>8  
    <b'' dis''>8 a''32 fis'' dis'' b'
    fis'8 b'8 dis'4 b'4
    gis'4 e'4\glissando \ottava #1 e''''4 \ottava #0 r4
    <e' c'' e''>8 <e'' c''' e'''>8 \acciaccatura{f'''16} <e'' c''' e'''>8 <e'' c''' e'''>8
    <e'' c''' e'''>8 <f'' d''' f'''>8 \acciaccatura{f'''16} <e'' b'' e'''>8  <dis'' b'' dis'''>8
    <e'' c''' e'''>8 <e'' c''' e'''>8 \acciaccatura{f'''16} <e'' c''' e'''>8 <e'' c''' e'''>8
    <g'' g''' e'''>8 <f'' d''' f'''>8 \acciaccatura{g'''16} <f'' d''' f'''>8 <e'' c''' e'''>8
    <e'' c''' e'''>8 e' g' f'' \acciaccatura{d''16 f''16} d''8
    d' f' e'' \acciaccatura{c''16 e''16} c''8
    dis' fis' d'' \acciaccatura{b'16 d''16} b'8
    e' gis' b'
    <d'' f''>8  c'' \acciaccatura{c''16 d''16} c''8 b'  c'' d'' c''8 b'
    <e'' c''>8  b' \acciaccatura{b'16 c''16 } b'8 a'  b' c''  b'8 a'
    <b' d''> e' gis' b' e'' d'' c'' b'
    \times 2/3 {a'8 gis' a'} \times 2/3 {b'8 cis'' d''-1} \times 2/3 {e''8 f'' g''} \times 2/3 {a''8-1 b'' cis'''}
    \ottava #1
    <d''' f'''>8  c''' \acciaccatura{c'''16 d'''16} c'''8 b''  c''' d''' c'''8 b''

    <e''' c'''>8  b'' \acciaccatura{b''16 c'''16 } b''8 a''  b'' c''' b''8 a''
    \times 2/3 {b''8-1 cis''' d'''} dis'''16 e'''-1 fis''' g'''
    gis''' a'''-1 b''' c'''' d''''-1 e'''' fis'''' gis''''
    <a'''' c''''>1
  \bar "|."

}


left = \new Voice \with {
  \remove "Note_heads_engraver"
  \consists "Completion_heads_engraver"
}{
  \global
  \acciaccatura{fis,,16 g,, gis,,}
  a,,4 <a c' e'> e,,4 <gis d' e'>
  a,,4 <a c' e'> e,,4 <gis d' e'>
  a,,4 <a c' e'> b,,4 <gis d' e'>
  c,4   <a c' e'>-.  <a' c' e'>-. r4
  d,4  <a d' f'> a,,4  <a d' f'>
  c,4   <a c' e'> a, ,4   <a c' e'>
  b,,4   <a b dis'> b,4   <a b dis' fis'>
  e,4 <gis d'>4-. \clef treble <gis'' d''' e''' >4-. \clef bass <e, e>4
  <a,, a,>4 <a c' e'> <e,, e,>4 <gis d' e'>
  <a,, a,>4 <a c' e'> <g,, g,>4 <g d' f'>
  <c c,>4 <g c' e> <d d,> <a d' f> <dis dis,> < dis' fis a> <e e,> <gis d' e'> 
  d4  <a d' f'> a,4  <a d' f'>
  c4   <a c' e'> a,4   <a c' e'>
  b,4   <e gis b d'> e,4  <e gis b d'>
  <a, a>4 <b, b>4 <cis cis'>4 <a, a>4
  <d d'>4-^ <f a> <f f'>4-^ <a d'>
  <e e'>4-^ <a c'> <a a'>-^ <c' e'>
  <b b'>4-^ <dis' fis'> <e e'>-^ <gis b>
  <a, a>1-^
  
  
}
%#(set-global-staff-size 18)

#(set! paper-alist (cons '("video" . (cons (* 6 in) (* 3.4 in))) paper-alist))
\paper {
%  #(set-paper-size "video")
  left-margin = 20
  right-margin = 20
% bottom-margin = 4
}

\score {
  \new PianoStaff \with {
    instrumentName = ""
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \right >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}