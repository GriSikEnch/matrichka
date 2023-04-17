require_relative "matrichka/version"

class M
  attr_reader :row_count, :col_count

  def initialize(matr)
    @matr = matr
    @row_count = matr.size
    @col_count = matr[0].size
  end

  def [](index)
    @matr[index]
  end

  def []=(index, value)
    @matr[index] = value
  end

  def +(other)
    new_matr = Array.new(row_count) {|i|
      Array.new(col_count) {|j|
        self[i][j] + other[i][j]
      }
    }
    M.new(new_matr)
  end

  def -(other)
    new_matr = Array.new(row_count) {|i|
      Array.new(col_count) {|j|
        self[i][j] - other[i][j]
      }
    }
    M.new(new_matr)
  end

  def *(other)
    case other
      when Numeric
        new_matr = Array.new(row_count) {|i|
          Array.new(col_count) {|j|
            self[i][j] * other
          }
        }
      when M
        new_matr = Array.new(self.row_count) {|i|
          Array.new(other.col_count) {|j|
            # self[i][j] + other[i][j]
            Array.new()
          }
        }
      end
    M.new(new_matr)
  end

  def determinant
    m = @matr
    case row_count
    when 0
      +1
    when 1
      + m[0][0]
    when 2
      + m[0][0] * m[1][1] - m[0][1] * m[1][0]
    when 3
      m0, m1, m2 = m
      + m0[0] * m1[1] * m2[2] - m0[0] * m1[2] * m2[1] \
      - m0[1] * m1[0] * m2[2] + m0[1] * m1[2] * m2[0] \
      + m0[2] * m1[0] * m2[1] - m0[2] * m1[1] * m2[0]
    end
  end
end
