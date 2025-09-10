module DiceSimulator

export roll_dice, roll_multiple


function roll_dice(sides::int=6)
    return rand(1:sides)
end


function roll_multiple(n::int, sides::int=6)
    return[roll_dice(sides)for _ in 1:n]
end






end # module DiceSimulator
