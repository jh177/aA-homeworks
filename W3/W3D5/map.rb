class Map

  def initialize
    @map = []
  end

  def set(key,value)
    @map.each_with_index do |pair, i|
      if pair[0] == key
        @map[i][1] = value
        return
      end
    end
    @map << [key,value]
  end

  def get(key)
    @map.each_with_index do |pair, i|
      if pair[0] == key
        return @map[i][1]
      end
    end
    nil
  end

  def delete(key)
    @map.each_with_index do |pair, i|
      if pair[0] == key
        @map.delete_at(i)
      end
    end
  end

  def show
    @map
  end

end