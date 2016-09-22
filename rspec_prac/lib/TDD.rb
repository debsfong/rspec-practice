
def remove_dups(array)
  result_hash = Hash.new
  array.each do |el|
    result_hash[el] = 1
  end
  result_hash.keys
end

class Array
  def two_sum
    result = []
    self.each_with_index do |el1, idx1|
      self[(idx1 + 1)..-1].each_with_index do |el2, idx2|
        result << [idx1,idx2+idx1+1] if el1 + el2 == 0
      end
    end
    result
  end
end

def my_transpose(matrix)
  results = Array.new(matrix.length) {[]}
  matrix.each do |array|
    array.each_with_index do |el, idx|
      results[idx] << el
    end
  end
  results
end

def stock_picker(prices)
  results = []
  greatest_diff = 0
  prices.each_with_index do |price, idx|
    (idx+1..(prices.length-1)).each do |idx2|
      diff = prices[idx2] - price
      if diff > greatest_diff
        greatest_diff = diff
        results = [idx, idx2]
      end
    end
  end
  results
end
