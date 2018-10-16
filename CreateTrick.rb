require './StallTricks'
require './CupTricks'
require './FlipTricks'

#技をこのarrayに入れる
@arr = Array.new

big_cup = CupTricks.new("ken", "easy", "big cup")
little_cup = CupTricks.new("ken", "easy", "little cup")
base_cup = CupTricks.new("ken", "easy", "base cup")
spike = CupTricks.new("ken", "easy", "spike")

airplane = StallTricks.new("tama", "medium", "airplane")
lighthouse = StallTricks.new("tama", "medium", "lighthouse")
jumping_stick = FlipTricks.new("tama", "medium", "jumping stick")
lighthouse_flip = FlipTricks.new("tama", "medium", "lighthouse flip")
falling_in = StallTricks.new("tama", "medium", "falling in")

bird = StallTricks.new("ken", "medium", "bird")
lunar = StallTricks.new("tama", "hard", "lunar")
stilt = StallTricks.new("tama", "hard", "stilt")

swap_to_ken = FlipTricks.new("tama", "easy", "swap to ken")
swap_to_tama = FlipTricks.new("ken", "easy", "swap to tama")


big_cup.instance_variable_set(:@possible_tricks, [little_cup, base_cup, spike, bird])
little_cup.instance_variable_set(:@possible_tricks, [big_cup, base_cup, spike, bird])
base_cup.instance_variable_set(:@possible_tricks, [big_cup, little_cup, spike, bird])
spike.instance_variable_set(:@possible_tricks, [big_cup, little_cup, base_cup, bird, swap_to_tama])

airplane.instance_variable_set(:@possible_tricks, [jumping_stick, lighthouse, lunar, stilt, swap_to_ken])
lighthouse.instance_variable_set(:@possible_tricks, [lighthouse_flip, airplane, lunar, stilt])
jumping_stick.instance_variable_set(:@possible_tricks, [jumping_stick, lighthouse, lunar, stilt, swap_to_ken])
lighthouse_flip.instance_variable_set(:@possible_tricks, [lighthouse_flip, airplane, lunar, stilt])
falling_in.instance_variable_set(:@possible_tricks, [jumping_stick, lighthouse, lunar, stilt, swap_to_ken])

bird.instance_variable_set(:@possible_tricks, [big_cup, little_cup, base_cup, spike])
lunar.instance_variable_set(:@possible_tricks, [airplane, lighthouse, stilt])
stilt.instance_variable_set(:@possible_tricks, [airplane, lunar, lighthouse])

swap_to_ken.instance_variable_set(:@possible_tricks, [big_cup, little_cup, base_cup, bird, swap_to_tama])
swap_to_tama.instance_variable_set(:@possible_tricks, [jumping_stick, lighthouse, lunar, stilt, swap_to_ken])


@arr.push(big_cup)
@arr.push(little_cup)
@arr.push(base_cup)
@arr.push(spike)

@arr.push(airplane)
@arr.push(lighthouse)
@arr.push(jumping_stick)
@arr.push(lighthouse_flip)
@arr.push(falling_in)

@arr.push(bird)
@arr.push(lunar)
@arr.push(stilt)

@arr.push(swap_to_ken)
@arr.push(swap_to_tama)
