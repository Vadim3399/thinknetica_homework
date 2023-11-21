class Station
  attr_reader :trains, name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train) 
    @trains << train
  end

  def trains_type(train)

    # @trains.each { |name| puts name if name == train}
    
    count = 0
    @trains.each do |type|
        if type == train
          count += 1     
        end
    end
    return "На станции #{train}: #{count}"
  end

  def send_trains(train)
    @trains.delete(train)
  end
end

class Route
  attr_reader :stations
  
  def initialize(first, last)
    @stations = [first, last]
  end
  
  def add_station(station)
    @stations.insert(-2, station)
  end
  
  def delete_station(station)
    if (@stations.first && @stations.last) != station
      @stations.delete(station) 
    end
  end

  def list_stations
    @stations.each { |item| puts "stations: #{item}" }
  end
end

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
  
  def accepts_route(route) #принимает маршрут
    @route = route
    
  end  
end