class Player

  def initialize(name)
    @name = name
  end


def makeaguess
  puts "Put your guess"
  guess = makeguess
end

def makecode
  puts "Create yo code"
  code = makeguess
end

private

def makeguess
  codeguess = []
  loop do
    color = gets.chomp.downcase
    codeguess << color if $colors.include?(color)
    break if codeguess.length == 4
  end
  codeguess
end

end





