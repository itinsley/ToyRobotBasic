class ToyRobot
  attr_reader :x, :y, :f, :movements

  def initialize
    @x = 0
    @y = 0
    @f = :east
  end

end

# robot = ToyRobot.new
# puts robot.x
# puts robot.y
# puts robot.f

# Note: to run this, in terminal type: $ ruby ToyRobot.rb
