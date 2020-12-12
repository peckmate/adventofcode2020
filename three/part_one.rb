require 'benchmark'

class TreeGrid
  def self.from(file)
    rows = File.readlines(file)
    TreeGrid.new(rows)
  end

  def initialize(rows)
    self.rows = rows
    self.width = rows.first.scan(/[\.\#]/).length
  end

  def at(y, x)
    self.rows[y][x % width]
  end

  def tree?(y, x)
    at(y, x) == '#'
  end

  def each(&block)
    (0...self.rows.length).each(&block)
  end

  def height
    rows.length
  end

  private

  attr_accessor :width, :rows
end

grid = TreeGrid.from('input.txt')

def count_trees(grid, slope_x, slope_y)
  trees = 0
  x = 0
  y = 0

  while y < grid.height
    trees += 1 if grid.tree?(y, x)
    y += slope_y
    x += slope_x
  end

  trees
end

@inputs = [ 
    [1, 1], 
    [3, 1], 
    [5, 1], 
    [7, 1], 
    [1, 2]
]

@bucket = []
@inputs.each do |x, y| 
    worker = count_trees( grid, x, y )
    @bucket << worker
end
@bucket.inject(:*)