require_relative "../lib/game.rb"
require_relative "../lib/player.rb"
require_relative "../lib/grid.rb"
puts "Welcome to tic-tac-toe"
puts "Instructions: The boxes are numbered from 1 to 9"
puts "A player has to input a number between 1 to 9"
puts "Once input, it will display in its appropriate box with letters either X or O"
puts "May the best player win, GoodLuck!"
puts "  You enter the grid number you want to play your piece at."
print "\n\n"

print "Enter name player1: "
p1 = gets.chomp,"x"
print "Enter name player2: "
p2 = gets.chomp,"o"

@p1 = Player.new(name: p1, symb: "x")
@p2 = Player.new(name: p2, symb: "o")
players=[@p1, @p2]

@game = Game.new(players)
@grid = Grid.new

until @game.game_over?
  @grid.render
  name = @game.current_player_name
  print "\n#{name}' turn. Enter number between 1 and 9: "
  until @grid.put_piece(move=(gets.chomp.to_i - 1), @game.current_player_symb)
    print "[Error] Invalid move, please move again: "
  end

  if @grid.finished?
    print "#{name} has won\n"
    break
  elsif @grid.full? && !(@grid.finished?)
    puts "It is a Draw"
    break
  end
  @game.switch_turn
end
@grid.render
@game.switch_turn


