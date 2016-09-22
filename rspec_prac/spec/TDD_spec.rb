require 'rspec'
require 'TDD'

describe "remove_dups" do
  it "removes duplicates" do
    expect(remove_dups([1,2,1,3,3])).to eq([1,2,3])
  end
  it "returns elements in original order" do
    expect(remove_dups([3, 3, 2, 2, 1])).to eq([3,2,1])
  end
end

describe 'two_sum' do
  it 'returns pairs of positions of elements that sum to zero' do
    expect([-1, 0, 2, -2, 1].two_sum).to include([0, 4], [2, 3])
  end
  it 'returns elements in order' do
    expect([-1, 0, 2, -2, 1].two_sum).to_not eq([[2, 3], [0, 4]])
  end
end

describe 'my_transpose' do
  let(:rows) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
  let(:cols) { [[0, 3, 6],[1, 4, 7],[2, 5, 8]] }

  it 'transposes a matrix' do
    expect(my_transpose(rows)).to eq(cols)
  end
end

describe 'stock_picker' do
  let(:prices) { [99, 101, 500, 102, 103] }

  it "returns the most profitable pair of days" do
    expect(stock_picker(prices)).to eq([0, 2])
  end

  it "doesn't return a buy date after a sell date" do
    expect(stock_picker(prices)).to_not eq([4, 2])
    expect(stock_picker(prices)).to_not eq([2, 4])
  end
end
