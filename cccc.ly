\version "2.24.0"

\header {
  title = "Ultra-High Minimal Ambient"
  subtitle = "Sparse & Extremely High Pitch Pattern"
  composer = "Game Music Score"
}

\score {
  <<
    \new Staff \with {
      instrumentName = #"Ultra High"
      % 초고음에서 영롱하게 튀는 실로폰/글로켄슈필 느낌
      midiInstrument = #"Glockenspiel"
    }
    \relative c'''' {
      \clef treble
      \key c \major
      \time 4/4
      \tempo 4 = 105

      % 여백을 극대화하여 마디당 1~2개의 초고음(C, G)만 톡- 튀어나오는 패턴
      c8-! r r4 g4-! r |
      r2 c8-! r r4 |
      g4-! r r8 c8-! r4 |
      r1 |

      c4-! r r2 |
      r4 g8-! r r2 |
      r2 c4-! r |
      <g c>1~ |
      <g c>1 |
    }
  >>

  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    }
  }
  \midi { }
}