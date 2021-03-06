require_relative "../lib/game.rb"
require_relative "spec_helper.rb"
require_relative "../lib/grid.rb"
describe Game do
  let (:player1) { Player.new({name: "player1", symb: "x"})}
  let (:player2) { Player.new({name: "player2", symb: "o"})}

  context "#initialize" do
    it 'randomly selects player2' do
      allow_any_instance_of(Array).to receive(:shuffle) { [player2, player1] }
      game = Game.new( [player1, player2] )
      expect( game.current_player).to eq player2
    end
    it "randomly selects player1" do
      allow_any_instance_of(Array).to receive(:shuffle) { [player1, player2] }
      game = Game.new( [player1, player2] )
      expect( game.current_player).to eq player1
    end
  end
  context "#switch_turn" do
    it "switches current_player to next_player" do
      game = Game.new([player1, player2])
      next_player = game.next_player
      game.switch_turn
      expect(game.current_player).to eq next_player
    end
    it "switches next_player to current player" do
      game=Game.new([player1, player2])
      current_player=game.current_player
      game.switch_turn
      expect(game.next_player).to eq current_player
    end
  end

  context "#get_move" do
    it "returns marked position" do
      allow_any_instance_of(Array).to receive(:shuffle) { [player1, player2] }
      game = Game.new( [player1, player2] )
      move= game.get_move(2, game.current_player_symb)
      expect( game.current_player_symb).to eq("x")
    end
  end


  context "#game_over?" do
    it 'returns true' do
      allow_any_instance_of(Array).to receive(:shuffle) { [player2, player1] }
      grid=Grid.new
      players=[player1,player2]
      game = Game.new(players, grid)
      move1 = game.get_move(1, game.current_player_symb)
      move2 = game.get_move(2, game.current_player_symb)
      move3 = game.get_move(3, game.current_player_symb)
      expect( game.game_over?).to eq(true)
    end
  end
  

end