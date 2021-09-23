class Simon

  COLOR = ["red", "blue", "yellow", "green"]

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      take_turn
      system("clear")
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      self.sequence_length += 1
      sleep(1)
    end
  end

  def show_sequence
    add_random_color
    @seq.each {|color| puts color}
    sleep(1)
    system("clear")
  end

  def require_sequence
    puts "Repeat the sequence (use space to separate the colors)"
    user_input = gets.chomp.split(" ")
    user_input.each_with_index do |color, i|
      if color != @seq[i]
        self.game_over = true
        break
      end
    end
  end

  def add_random_color
    self.seq << COLOR.sample
  end

  def round_success_message
    puts "Success!"
  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

new_game = Simon.new
new_game.play