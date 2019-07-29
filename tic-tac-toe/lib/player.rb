class Player
  attr_reader :name, :symb

  def initialize(input)
    @name = input.fetch(:name)
    @symb = input.fetch(:symb)
  end
end

