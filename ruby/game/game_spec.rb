require_relative 'game'

describe Game do 
  let(:game) {Game.new("paella")}

    it "change word into underscores string" do 
      array = ["p", "a", "e", "l", "l", "a"]
    expect(game.empty_array(array)).to eq "_ _ _ _ _ _"
  end 

# Sorry, no time to do more. 

end 