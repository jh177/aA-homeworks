class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    self.place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..13).each {|i| @cups[i] = [:stone, :stone, :stone, :stone] if !(i==6||i==13)}
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !(0..13).to_a.include?(start_pos)
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    current_pos = start_pos
    stones = @cups[start_pos].count
    @cups[start_pos] = []
    until stones == 0
      current_pos = (current_pos + 1) % 14
      if current_player_name == @name1 && current_pos != 13
          @cups[current_pos] << :stone
          stones -= 1
      elsif current_player_name == @name2 && current_pos != 6
          @cups[current_pos] << :stone
          stones -= 1
      end
    end
    self.render
    self.next_turn(current_pos)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1
      return :switch
    else
      return ending_cup_idx
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? {|i| @cups[i].empty?} || (7..12).all? {|i| @cups[i].empty?}
  end

  def winner
    case @cups[6].count <=> @cups[13].count
    when -1
      return @name2
    when 0
      return :draw
    when 1
      return @name1
    end
  end
end
