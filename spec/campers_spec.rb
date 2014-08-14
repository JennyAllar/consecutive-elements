require 'campers'

describe 'campers' do
  it 'can output the list of activies' do
    activites = 
["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]
    
    actual = Campers.new(activites).sort
    expected = [
      ["archery", 1],
      ["swimming", 2],
      ["crafts", 1],
      ["archery", 2],
      ["crafts", 1],
    ]
    expect(actual).to eq expected
  end
end