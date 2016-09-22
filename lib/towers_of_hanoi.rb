class Towers_of_Hanoi
  attr_reader :towers, :size, :name
  def initialize(size, name)
    @size = size
    @name = name
    @towers = [[],[],[]]
    create_tower
  end

  def play
    until won?
      puts "Select your start tower"
      start_tower = gets.chomp.to_i
      puts ""
      end_tower = gets.chomp.to_i
      move(start_tower, end_tower)
    end
    puts "You won!"
  end

  def create_tower
    (1..@size).each do |disk|
        @towers[0].unshift(disk)
    end
  end

  def move(start_tower, end_tower)
    if @towers[start_tower].empty?
      raise StandardError.new "Can't move from an empty tower"
    elsif !@towers[end_tower].empty? && @towers[start_tower].last > @towers[end_tower].last
      raise StandardError.new "Can't place a larger disk on a smaller disk"
    end
    @towers[end_tower] << @towers[start_tower].pop
  end

  def won?
    return true if @towers[1..2].include?([3,2,1])
    false
  end

end
