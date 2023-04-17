require_relative "matrichka/version"

class Matr
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
        new_matr = Array.new(self.row_count) {|i|
          Array.new(other.col_count) {|j|
            # self[i][j] + other[i][j]
            Array.new()
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
    end
  end

  
  # Нахождение максимально элемента в строке
  def max_element(col)
    m = @matr
    max_el = m[col][col]
    max_row = col
    m.each_with_index do |element,k|
      element.each_with_index do |el,i|
        if (el >= max_el)
          max_el = el
          max_row = k
        end
      end
    end

    if ( max_row != col )
      m = swap(max_row,col)
    end
    #return max_el, max_row
    
  end

  # Перестановка строк
  def swap(max_row,col)
    m = @matr
    m.each_with_index do |element,i|
      t = m[max_row][i]
      m[max_row][i] = m[col][i]
      m[col][i] = t

    end

  end
# Вычетание строк
  def sub(i,j,h)
    m =@matr
    m.each_with_index do |element,k|
      m[i][k] -= m[j][k]*h

    end
  end
# Приведение к треугольной матрице
  def triangle
    m = @matr

    m.each_with_index do |element,i|
      m = m.max_element(i)
      (element+1).each_with_index do |el,j|
        h = m[i][j]/m[j][j]
        sub(i,j,h)
      end
    end
  end

  def gauss
    m = @matr
    r = @row_count

    p m

    m = m.triangle
    det = m.determinant
    s = Array.new(r){|n|n+1}

    if (det == 0)
      puts "The matrix is degenerate. The determinant is zero"
    else
      n = m.size - 1 
      solution = Array.new(n, 0)
      n.downto(-1)  {|i|
        solution[i] = m[i][n] / m[i][i]
        (i - 1).downto(-1) {|j|
          p j
          m[j][n] -= m[j][i] * solution[i]
        }
      }
      solution
    end
  end

end
