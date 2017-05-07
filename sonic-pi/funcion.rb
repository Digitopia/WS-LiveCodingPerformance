use_synth :hollow
use_bpm 100

define :myplay do |n|
  play n, attack: 2.0, decay: 2.0
end

myplay :g3
sleep 1
myplay :eb3
sleep 1
myplay :eb3
sleep 2

myplay :f3
sleep 1
myplay :d3
sleep 1
myplay :d3
sleep 2
