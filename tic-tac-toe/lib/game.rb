require_relative "../lib/grid.rb"
require_relative "../lib/player.rb"
class Game
  attr_reader :players, :grid, :current_player, :next_player, :symb

  def initialize(players, grid=Grid.new)
    @players =players
    @grid = grid
    @current_player, @next_player = players.shuffle
    @symb = symb
  end

  def switch_turn
    @current_player, @next_player = @next_player, @current_player
  end

  def current_player_name
    return current_player.name
  end
  
  def current_player_symb
    return current_player.symb
  end

  def get_move(move, smb)
    return @grid.put_piece(move.to_i-1, smb=current_player.symb)
  end
  
  def game_over?
    # Check the last move for victory condition
    if @grid.finished?
      return true #{current_player.name} won" 
    elsif @grid.full? && !(@grid.finished?)
      return false  #"It is a Draw"
    else
      return 
    end
  end
 
end
