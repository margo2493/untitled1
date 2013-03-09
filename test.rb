
class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    2 * (@width + @length)
  end
end
my_rectangle = Rectangle.new(3, 5)
puts my_rectangle.perimeter

class Die
  def initialize(name)
    @name=name
  end
  def to_ s
    "Hi,my name is #(@name)"
  end
end

p Die.new("432")

  puts "Welcome to Pig!\n\n"
  player1_points = 0
  player2_points = 0

  until player1_points >= 100 || player2_points >= 100
    puts "Player 1, your turn.\n\n"
    turn_points = 0
    roll = nil
    player_choice = nil

    until roll == 1 || player_choice == 'h'
      roll = rand(1..6)
      puts "You rolled a #{roll}."
      turn_points += roll
      if roll == 1
        turn_points = 0
      else
        puts "So far this turn, you have #{turn_points} points."
        puts "Press 'h' to hold or any other key to roll again.\n\n"
        player_choice = gets.chomp
      end
    end

    player1_points += turn_points
    puts "You got #{turn_points} points this turn.\n\n"
    puts "You have #{player1_points} points total."


    puts "Player 2, your turn.\n\n"
    turn_points = 0
    roll = nil
    player_choice = nil

    until roll == 1 || player_choice == 'h'
      roll = rand(1..6)
      puts "You rolled a #{roll}."
      turn_points += roll
      if roll == 1
        turn_points = 0
      else
        puts "So far this turn, you have #{turn_points} points."
        puts "Press 'h' to hold or any other key to roll again.\n\n"
        player_choice = gets.chomp
      end
    end

    player2_points += turn_points
    puts "You got #{turn_points} points this turn."
    puts "You have #{player2_points} points total.\n\n\n"
  end

  if player1_points > player2_points
    puts "Congratulations, Player 1. You win!"
  else
    puts "Congratulations, Player 2. You win!"
  end



  puts "Welcome to Pig!\n\n"
  players = [Player.new("Player 1"), Player.new("Player 2")]

  until players.select {|player| player.points >= 100}.any?
    players.each do |player|
      puts "#{player.name}, your turn.\n\n"
      turn_points = 0
      roll = nil
      player_choice = nil

      until roll == 1 || player_choice == 'h'
        roll = rand(1..6)
        puts "You rolled a #{roll}."
        turn_points += roll
        if roll == 1
          turn_points = 0
        else
          puts "So far this turn, you have #{turn_points} points."
          puts "Press 'h' to hold or any other key to roll again.\n\n"
          player_choice = gets.chomp
        end
      end

      player.add_points(turn_points)
      puts "You got #{turn_points} points this turn."
      puts "You have #{player.points} points total.\n\n\n"
    end
  end

  winner = players.max_by {|player| player.points}
  puts "Congratulations, #{winner.name}. You win!"