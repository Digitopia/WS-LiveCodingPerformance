# 0. Princípios Básicos

## 0.0 Hello World

```
play 80
```

## 0.1 Atalhos de teclado

- **Executar**                                : `Ctrl/Cmd + R`
- **Parar**                                   : `Ctrl/Cmd + S`
- Guardar                                     : `Ctrl/Cmd + S`
- Abrir                                       : `Ctrl/Cmd + O`
- Mostar menu de Ajuda                        : `Shift/Cmd + I`
- **Mostar Ajuda sobre keyword debaixo do cursor**: `Ctrl + I`
- Aumentar tamanho de letra                   : `Ctrl/Cmd + +`
- Diminuir tamanho de letra                   : `Ctrl/Cmd + -`
- Auto formatar o código                      : `Ctrl/Cmd + M`

## 0.2 Várias maneiras de usar o `play`

```
# usando a nota MIDI
play 80

# mas também aceita valores decimais
play 70.812

# usando notação (por defeito toca indice 4)
play :c

# funciona tanto em maiúscula como minúscula
play :C

# especificando o indice
play :a3

# bemois
play :ab3

# sustenidos especificam-se com s (de sharp), porque # é considerado como início de comentário
#play :as3
```

## 0.3 `sleep`

O seguinte código:

```
play :C3
play :E3
play :G3
```

irá tocar o acorde de Dó. Mas e se quisermos antes o harpejo? Usamos o `sleep`.


```
play :C3
sleep 1
play :E3
sleep 1
play :G3
sleep 1
```

## 0.4 Mudar bpm

Para mudarmos os bpms podemos usar o comando `use_bpm`.

```
use_bpm 120

play :C3
sleep 1
play :E3
sleep 1
play :G3
sleep 1
```

A música fica mais rápida, porque o na realidade `sleep 1`, espera durante uma semínima do bpm definido e não um segundo.

## 0.5 Mudar o som

```
use_synth :fm

play :C3
sleep 1
play :E3
sleep 1
play :G3
sleep 1
```

**Nota:** O autocomplete do Sonic Pi é extremamente útil, porque sugere automaticamente as várias possibilidades que existem. Há varios sinetetizadores possíveis e muito diferentes para escolher.

Alguns para experimentar:
```
:prophet
:dsaw
:fm
:tb303
:pulse
```

## `amp` e `pan`

A função `play` aceita os argumentos `amp` (de amplitude, e que  por defeito usa sempre o valor 1) e `pan` que controla a panorâmica do som, variando de `-1` a `1`.

```
play :C, amp: 1, pan: 0
sleep 1
play :C, amp: 0.1, pan: 0
sleep 1
play :C, amp: 2, pan: -1
sleep 1
play :C, amp: 3.5, pan: 1
```

## ADSR envelopes

![](https://raw.githubusercontent.com/samaaron/sonic-pi/master/etc/doc/images/tutorial/env-attack-decay-sustain-release.png)

```
play 60, attack: 0.1, attack_level: 1, decay: 0.2, sustain_level: 0.4, sustain: 1, release: 0.5
```

## 0.6 Usar samples

O Sonic Pi vem já com vários samples, que podem ser usados da seguinte maneira:

```
sample :ambi_choir
```

Pode-se mudar a velocidade de playback com o parâmetro `rate`:

```
sample :ambi_choir, rate: 0.5
```

```
sample :loop_amen, rate: 1
```

E até se pode usar números negativos para tocar o som em *reverse*:

```
sample :loop_amen, rate: -1
```
