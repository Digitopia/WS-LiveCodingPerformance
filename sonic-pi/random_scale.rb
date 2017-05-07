live_loop :a do
  use_bpm 130
  notes = scale(:a, :minor_pentatonic, num_octaves: 3)
  play choose(notes), amp: 0.1, release: 0.1
  sleep 1.0/2
end