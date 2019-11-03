require_relative '../lib/connect'

RSpec.describe Board do
  it "test_an_empty_board_has_no_winner" do
    board = [
      '. . . . .',
      ' . . . . .',
      '  . . . . .',
      '   . . . . .',
      '    . . . . .'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq(''))
  end

  it "test_x_can_win_on_a_1x1_board" do
    board = [
      'X'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('X'))
  end

  it "test_o_can_win_on_a_1x1_board" do
    board = [
      'O'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('O'))
  end

  it "test_only_edges_does_not_make_a_winner" do
    board = [
      'O O O X',
      ' X . . X',
      '  X . . X',
      '   X O O O'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq(''))
  end

  it "test_illegal_diagonal_does_not_make_a_winner" do
    
    board = [
      'X O . .',
      ' O X X X',
      '  O X O .',
      '   . O X .',
      '    X X O O'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq(''))
  end

  it "test_nobody_wins_crossing_adjacent_angles" do
    
    board = [
      'X . . .',
      ' . X O .',
      '  O . X O',
      '   . O . X',
      '    . . O .'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq(''))
  end

  it "test_x_wins_crossing_from_left_to_right" do
    
    board = [
      '. O . .',
      ' O X X X',
      '  O X O .',
      '   X X O X',
      '    . O X .'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('X'))
  end

  it "test_o_wins_crossing_from_top_to_bottom" do
    
    board = [
      '. O . .',
      ' O X X X',
      '  O O O .',
      '   X X O X',
      '    . O X .'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('O'))
  end

  it "test_x_wins_using_a_convoluted_path" do
    
    board = [
      '. X X . .',
      ' X . X . X',
      '  . X . X .',
      '   . X X . .',
      '    O O O O O'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('X'))
  end

  it "test_x_wins_using_a_spiral_path" do
    board = [
      'O X X X X X X X X',
      ' O X O O O O O O O',
      '  O X O X X X X X O',
      '   O X O X O O O X O',
      '    O X O X X X O X O',
      '     O X O O O X O X O',
      '      O X X X X X O X O',
      '       O O O O O O O X O',
      '        X X X X X X X X O'
    ].map {|row| row.gsub(/^ */, '')}
    game = Board.new(board)
    expect(game.winner).to(eq('X'))
  end
end
