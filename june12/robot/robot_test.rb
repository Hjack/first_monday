
require 'minitest/autorun'
require './robot'


class TestRobotOutput < MiniTest::Unit::TestCase
  
  def setup
    @robot1 = Robot.new
    @robot2 = Robot.new
  end

  # def test_robot_exists
  #   assert_equal "HKN65",@robot1.name
  # end
  def test_robot_nameis_5_characters
    assert_equal 5,@robot1.name.length
  end

  def test_random_name
    assert @robot1.name != @robot2.name
  end

  def test_robot_maintains_name
    assert @robot1.name == @robot1.name
    assert @robot1.name == @robot1.name
    assert @robot1.name == @robot1.name
    assert @robot2.name == @robot2.name
  end

  def test_robot_can_be_reset
    before_reset = @robot1.name
    @robot1.reset
    assert @robot1.name != before_reset
  end

  def test_robot_tracks_usage
    @robot1.name
    @robot1.name
    @robot1.name
    @robot1.name
    @robot1.name
    assert_equal 5, @robot1.usage
  end

end