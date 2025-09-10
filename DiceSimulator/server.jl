using HTTP, JSON, DiceSimulator

function handler(req)
    query = HTTP.URIs.queryparams(req.target)
    n = parse(Int, get(query, "n", "1"))
    sides = parse(Int, get(query, "sides", "6"))
    rolls = roll_multiple(n, sides)
    return HTTP.Response(200, JSON3.write(Dict("rolls" => rolls)))
end

HTTP.serve(handler, "127.0.0.1", 8000)