class Computer
  attr_reader :answer

  def initialize
    @answer = generate
  end
  
  def guess
    @answer = generate
  end
  private
  
  def generate
    code = []
    4.times do code << $colors.sample end
    code
  end

end