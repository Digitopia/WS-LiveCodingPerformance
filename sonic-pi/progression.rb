live_loop :prog do
  
  2.times do
    c = chord(:c, :major)
    play_chord c
    sleep 1
  end
  
  2.times do
    g = chord(:g, :major)
    play g
    sleep 1
  end
  
  2.times do
    a = chord(:a, :minor)
    play a
    sleep 1
  end
  
  2.times do
    f = chord(:f, :major)
    play f
    sleep 1
  end
  
end

live_loop :melo do
  with_fx :reverb, room: 1.0 do
    sync :prog
    64.times do
      #play scale(:c, :major_pentatonic, num_octaves: 2).choose, release: 0.2, amp: 0.2
      sleep 0.125
    end
  end
end

live_loop :bass do
  sync :prog
  16.times do
    #play scale(:c, :major_pentatonic).choose - 12*1, release: 2, amp: 1.2
    sleep 0.5
  end
end

live_loop :drums do
  sync :prog
  4.times do
    sample :loop_amen, beat_stretch: 2, amp: 0.6
    sleep 2
  end
end

live_loop :noise do
  use_synth :bnoise
  play [60,70,80,90,100].choose,
    attack: 0,
    release: 0.0001,
    amp: 0.5,
    pan: rrand(-1,1)
  sleep rrand(0.125 ,0.250)
  #sleep 1
end

