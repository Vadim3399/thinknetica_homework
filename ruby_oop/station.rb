class Station
  attr_reader :trains, :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train) 
    trains << train
  end

  def trains_by_type(type)
    @trains.select { |train| train.type == type }
  end

  def send_trains(train)
    @trains.delete(train)
  end
end
