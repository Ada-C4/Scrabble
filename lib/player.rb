require 'pry'

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

end
