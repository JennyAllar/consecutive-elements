require 'campers'

describe 'campers' do
  it 'can output the list of activities' do
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
  
  it 'validates activites based on twice in a day rule' do
    activites =
      [
        ["archery", 1],
        ["swimming", 2],
        ["crafts", 1],
        ["archery", 2],
        ["crafts", 1],
      ]
    
    actual = Campers.new(activites).validated?
    expected = false
    expect(actual).to eq expected
    end
  
  it 'validates activites based on twice in a day rule' do
    activites =
      [
        ["archery", 2],
        ["swimming", 2],
        ["archery", 2],
        ["crafts", 1],
      ]
    
    actual = Campers.new(activites).validated?
    expected = true
    expect(actual).to eq expected
  end
end