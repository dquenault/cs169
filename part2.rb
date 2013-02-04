class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  # YOUR CODE HERE
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

class Game < Struct.new(:player1, :choice1, :player2, :choice2)
  def winner
    'PRSP'.include?(choice1 + choice2) ? player1 : player2
  end
end

def rps_tournament_winner(tourn)
  return tourn.winner if tourn.is_a? Game
  tourn.map { |t| rps_tournament_winner(t) }
end

def rps_tournament_winner(tournament)
    if(tournament[0][0].is_a? String)
        rps_game_winner(tournament)
    else
        rps_tournament_winner(
            [rps_tournament_winner(tournament[0]),
            rps_tournament_winner(tournament[1])]
        )
    end
end
