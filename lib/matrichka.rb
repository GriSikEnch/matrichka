# frozen_string_literal: true

require_relative "matrichka/version"

module Matrichka
  class Error < StandardError; end
  # Your code goes here...
end

class Matr
  attr_accessor :m

  def initialize(m:)
    @m = m
  end

  def [](index)
    m[index]
  end

  def []=(index, value)
    @m[index] = value
  end

  def determinant
    # для матриц 2х2
    m[0][0] * m[1][1] - m[0][1] * m[1][0]
  end

end


# x = Matr.new(m: [[1,2,3],[4,5,6],[7,8,9]])
# p x
# p x[0]
# p x[1][0]

c = Matr.new(m: [[1,2],[4,5]])
p c.determinant