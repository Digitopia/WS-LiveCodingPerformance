use_bpm 100

live_loop :prog do
  
  with_fx :reverb, mix: rrand(0.1, 0.9), room: 1.0 do
    
    prog = [
      (chord_degree :i, :C, :major, 3),
      (chord :g, :major),
      (chord_degree :vi, :C, :major, 3),
      (chord_degree :iv, :C, :major, 3),
    ]
    
    2.times do
      play prog[0]
      sleep 1
    end
    
    2.times do
      play prog[1]
      sleep 1
    end
    
    2.times do
      play prog[2]
      sleep 1
    end
    
    2.times do
      play prog[3]
      sleep 1
    end
    
  end
  
end

use_random_seed 10
live_loop :notas do
  sync :prog
  8.times do
    play scale(:c, :major_pentatonic, num_octaves: 1).choose + 24,
      amp: 0.3
    sleep 1
  end
end

live_loop :drums do
  with_fx :flanger, phase: rrand(0.1, 4) do
    sync :prog
    2.times do
      sample :loop_amen, beat_stretch: 4
      sleep 4
    end
  end
end

