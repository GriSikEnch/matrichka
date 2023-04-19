require_relative "matrichka/version"

module MatrichkaExceptions
  class RowsColsMismatchErr < StandardError
    def initialize(msg="Кол-во столбцов 1-ой матрицы не совпадают с кол-вом строк 2-ой!!!")
      super
    end
  end
  class CantEvalDetErr < StandardError
    def initialize(msg="Невозожно посчитать детерминант матрицы порядка выше, чем 3!!!")
      super
    end
  end
end


class Matr
  include MatrichkaExceptions

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
    Matr.new(new_matr)
  end

  def -(other)
    new_matr = Array.new(row_count) {|i|
      Array.new(col_count) {|j|
        self[i][j] - other[i][j]
      }
    }
    Matr.new(new_matr)
  end

  def *(other)
    case other
      when Numeric
        new_matr = Array.new(row_count) {|i|
          Array.new(col_count) {|j|
            self[i][j] * other
          }
        }
      when Matr
        raise RowsColsMismatchErr if self.col_count != other.row_count

        new_matr = Array.new(self.row_count) {Array.new(other.col_count, 0)}
        Array.new(self.row_count) {|i|
          Array.new(other.col_count) {|j|
            Array.new(other.row_count) {|k|
              new_matr[i][j] += self[i][k] * other[k][j]
            }
          }
        }
      end
    Matr.new(new_matr)
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
    else
      raise CantEvalDetErr
    end
  end

  
  # Нахождение максимально элемента в строке
  
# Вычетание строк
  def sub(i,j,h)
    m =@matr
    m.each_with_index do |element,k|
      m[i][k] -= m[j][k]*h

    end
  end

  end

end
N = Matr.new([[1, 2], [3, 5]])
p N.triangle


