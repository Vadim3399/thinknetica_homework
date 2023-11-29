class Train
  attr_reader :number, :type, :wagons, :current_speed, :current_station, :route, :current_station_index
  
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
    @current_station_index = 0
    current_station.arrive(self) 
  end 

  def current_station
    route.stations[current_station_index]
  end

  def next_station
    route.station[current_station_index + 1]
  end

  def previous_station
    route.station[current_station_index - 1]
  end 

  def move_forward
    return unless next_station
    current_station.send_train(self) 
    @current_station_index += 1
    current_station.arrive(self) 
  end

  def move_backward
    return unless next_station
    current_station.send_train(self) 
    @current_station_index -= 1
    current_station.arrive(self) 
  end
end
