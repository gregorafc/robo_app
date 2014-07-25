class RobotController < ApplicationController
  


  def index

    @robo = Robot.new(1237,6)

  end



end
