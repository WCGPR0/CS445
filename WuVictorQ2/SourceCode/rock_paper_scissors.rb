class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless player1[1].match(/[RPS]/)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless player2[1].match(/[RPS]/)
        
    if player1[1] == player2[1]
      return player1
    elsif player1[1] < player2[1]
      return player2 if player1[1] == 'P' and player2[1] == 'S'
      return player1
    else
      return player1 if player1[1] == 'S' and player2[1] == 'P'
    return player2
    end
end

def self.tournament_winner(tournament)
  if (tournament[0][0].is_a? String)
      self.winner(tournament[0], tournament[1])
  else
  self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end
end
  
end