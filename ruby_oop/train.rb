class Train
  attr_reader :number, :type, :wagons, :current_speed, :current_station
  
  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @current_speed = 0
  end
  
  def gather_speed(speed)
    @current_speed += speed
  end
  
  def slow_down(speed)
    @current_speed -= speed
  end
  
  def stop
    @current_speed = 0
  end
  
  def attach_wagon
    @wagons += 1 if current_speed == 0
  end
  
  def detach_wagon
    @wagons -= 1 if current_speed == 0 && @wagons > 0
  end
  
  def accepts_route(route) 
    @route = route
    @current_station = @route.stations[0] 
    @current_station.arrive(self) 
  end 

  def move_forward
    return unless @route && @current_station
    current_index = @route.stations.index(@current_station) + 1
    return if current_index >= @route.stations.length 
    current_station.send_train(self) 
    @current_station = @route.stations[current_index] 
    @current_station.arrive(self) 
  end

  def move_backward
    return unless @route && @current_station
    prev_station_index = @route.stations.index(@current_station) - 1
    return if prev_station_index.negative? 
    current_station.send_train(self) 
    @current_station = @route.stations[prev_station_index] 
    @current_station.arrive(self) 
  end
end
