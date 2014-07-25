require 'open-uri'

class Robot


  def initialize(adress, id)
    @adress = adress
    @id = id
  end

  def lock
    open("http://10.10.130.100:#{@adress}/#{@id}/lock")
  end


  def take_control_fwd
    x = open("http://10.10.130.100:1234").read
    x = x.slice(-1)
    open("http://10.10.130.100:1234/#{x}/forward")
  end

  def status
    open("http://10.10.130.100:#{@adress}").read
    return true
  end

  def forward
    open("http://10.10.130.100:#{@adress}/#{@id}/forward")
  end

  def backward
    open("http://10.10.130.100:#{@adress}/#{@id}/backward")
  end

  def slow_forward
    open("http://10.10.130.100:#{@adress}/#{@id}/slow_forward")
  end

  def slow_backward
    open("http://10.10.130.100:#{@adress}/#{@id}/slow_backward")
  end

  def left
    open("http://10.10.130.100:#{@adress}/#{@id}/left")
  end

  def right
    open("http://10.10.130.100:#{@adress}/#{@id}/right")
  end

  def run
    open("http://10.10.130.100:#{@adress}/#{@id}/run")
  end

  def attack
    open("http://10.10.130.100:#{@adress}/#{@id}/attack")
  end

  def dance
    forward
    sleep(1)
    run
    sleep(5)
    backward
    sleep(1)
    attack
    sleep(1)
    left
  end


  def proximity
    open("http://10.10.130.100:1234/proximity")
  end

end



