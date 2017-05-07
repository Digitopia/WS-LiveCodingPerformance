use_synth :hollow
with_fx :reverb, room: 1 do
  
  live_loop :nota1 do
    play [:a3, :b3].choose, attack: 5, release: 5
    sleep 9
  end
  
  live_loop :nota2 do
    play [:b2, :cs3].choose, attack: 6, release: 10, amp: 0.7
    sleep 10
  end
  
  live_loop :nota3 do
    play [:a4, :fs4].choose, attack: 4, release: 10, amp: 0.8
    sleep 12
  end
  
  live_loop :noise do
    sample :perc_bell, rate: rrand(-2,-0.5), amp: rrand(0.01, 0.1)
    sleep rrand(1, 2)
  end
  
  live_loop :noise do
    use_synth :bnoise
    #play rrand(50,70), attack: 0.5, release: 0.2, amp: 0.02
    sleep rrand(0.125, 0.200)
  end
  
  with_fx :echo, phase: 1.0 do
    live_loop :a do
      use_synth :piano
      play scale(:a, :minor_pentatonic).choose + 12, attack: 10, release: 2, amp: 2.0
      sleep rrand(2,10)
    end
  end
  
  
end
