class RobotsController < ApplicationController

  
  before_action :locking


  def index

    begin
    @proxy = @robo.proximity.read

    rescue
      @proxy = "Niedostępne"
    end

  end

  def proximity
    @proximity
  end


  def forward
    @robo.forward
    redirect_to robots_path
  end

  def take_control_fwd
    @robo.take_control_fwd
    redirect_to robots_path
  end

  def backward
    @robo.backward
    redirect_to robots_path
  end

  def slow_forward
    @robo.slow_forward
    redirect_to robots_path
  end

  def slow_backward
    @robo.slow_backward
    redirect_to robots_path
  end

  def left
    @robo.left
    redirect_to robots_path
  end

  def right
    @robo.right
    redirect_to robots_path
  end

  def run
    @robo.run
    redirect_to robots_path
  end

  def attack
    @robo.attack
    redirect_to robots_path
  end



private

  def locking
    @robo = Robot.new(PORT, API_ID)
    @robo.lock
  end

end
