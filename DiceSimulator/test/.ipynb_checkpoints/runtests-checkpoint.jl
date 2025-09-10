using Test
using DiceSimulator

@testset "Dice Rolls" begin
    @test 1 <= roll_dice() <= 6
    @test length(roll_multiple(5)) == 5
    @test all(1 <= x <= 20 for x in roll_multiple(10, 20))
end