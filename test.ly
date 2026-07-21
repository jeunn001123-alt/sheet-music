\version "2.22.0"

\header {
  title = "Avant-Garde Sequence for Visuals"
  composer = "Hacklily Composition"
}

\score {
  \new Staff \with {
    instrumentName = #"Synth"
    midiInstrument = #"clavinet" % 브라우저 호환성이 가장 높은 전자음
  }
  \relative c' {
    \clef treble
    \time 5/8
    \tempo 4 = 84

    % [Part 1] 공간감과 갑작스러운 도약
    r4 c8-! r4 |
    fis'4-! c,,8-! r4 |
    r8 bes''8-! fis,8-! r4 |
    gis'16-! a-! r8 d,,8-! dis'8-! r8 |

    % [Part 2] 불규칙한 변박과 옥타브 대비
    \time 3/8
    e,,16-. b''-. f'-! r8. |
    cis'8-! a,,8-! dis''8-! |
    
    \time 5/8
    r4 g,,8-! bes''8-! r4 |
    c,,16-. cis-. r8 f''8-! b,,8-! r8 |

    % [Part 3] 차가운 점묘적 잔향
    \time 4/4
    a,,8-! r16 aes''16-. e,8-! r16 g''16-. d,,4-! cis''''8-! r8 |
    r2 r4 dis,,,,4-! \bar "|."
  }

  \layout { }
  \midi { }
}