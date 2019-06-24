function addsum(table)
    tabler = hcat(table, sum(table, dims=2))
    vcat(tabler, sum(tabler, dims=1))
end

input = [
   9 85 92 20;
  68 25 80 55;
  43 96 71 73;
  43 19 20 87;
  95 66 73 62;
]

expected = [
    9  85  92  20  206;
   68  25  80  55  228;
   43  96  71  73  283;
   43  19  20  87  169;
   95  66  73  62  296;
  258 291 336 297 1182;
]

@show addsum(input)
@assert expected == addsum(input)
