class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    #RockPaperScissors.winner(['Armando','P'], ['Dave','S'])  
    #                       # => ['Dave','S']
    valids =  ['R', 'P', 'S', 'r', 'p', 's']
    s1 = player1.at(1)
    s2 = player2.at(1)
    r = valids.include?(s1) && valids.include?(s2)
    raise NoSuchStrategyError, 'Strategy must be one of R,P,S' unless r == true
    
    wins = {'R' => 'S', 'S' => 'P', "P" => "R"} 
    {true => player1, false => player2}[(s1 == s2 or wins[s1] == s2)]
  end
  
  def self.tournament_winner(tournament)
    if tournament[0][0].kind_of?(Array) == false
      self.winner(tournament[0],tournament[1])
    else
      self.winner(self.tournament_winner(tournament[0]),
                  self.tournament_winner(tournament[1]))
    end
  end
end
