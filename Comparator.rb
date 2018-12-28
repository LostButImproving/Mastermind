
module Comparator

  def self.same(guess, code)
    
    i = 0
    count = 0
    while (i < 4)
      if guess[i] == code[i]
        count += 1
      end      
      i += 1
    end
    count
  end

  def self.same_but_different_spot(guess, code)

    i = 0
    j = 0
    count = 0

    while (i < 4)
      while (j < 4)
        if (code[j] == code[i] && j != i)
          count += 1
        end
        j += 1
      end
      i += 1
      j = 0
    end
    count
  end

  def self.feedback(guess, code)
    
    black_pins = self.same(guess, code)

    white_pins = self.same_but_different_spot(guess, code)

    feedback = []

    black_pins.times do feedback << "O" end
    white_pins.times do feedback << "X" end
    if (feedback.length < 4)
      (4 - feedback.length).times do feedback << "*" end
    end
    feedback
  end
end
