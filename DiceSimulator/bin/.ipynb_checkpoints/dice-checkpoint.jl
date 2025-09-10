using DiceSimulator

if length (ARGS) = 0
    println("Usage: dice.jl <num_dice> [sides]")
    exit(1)
end

n = parse(int, ARGS[1])
sides = length(ARGS) > 1 ? parse(int, ARGS[2]): 6
println("Rolled:", roll_multiple(n, sides))
