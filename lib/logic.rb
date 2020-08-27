class Logic
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [2, 4, 6],
    [0, 4, 8]
  ].freeze

  def win(arg)
    result = false
    WIN_COMBINATIONS.each do |w|
      result = true if (arg[w[0]] == arg[w[1]]) && (arg[w[1]] == arg[w[2]])
    end
    result
  end
end
