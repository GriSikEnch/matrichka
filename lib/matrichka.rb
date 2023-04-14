# frozen_string_literal: true

require_relative "matrichka/version"

module Matrichka
  class Error < StandardError; end
  # Your code goes here...
end

class Matr
  attr_accessor :m
  attr_reader :rows
  protected :rows

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

  # Returns the number of rows
  def row_count
    @rows.size
  end


# Matrix multiplication.
  def *(m) # m is matrix or vector or number
      m_rows = m.rows
      new_rows = rows.map do |row_i|
        Array.new(m.column_count) do |j|
          v[i][j] = 0
          column_count.times do |k|
            v[i][j] += row_i[k] * m_rows[k][j]
          end
          v[i][j]
  end


# x = Matr.new(m: [[1,2,3],[4,5,6],[7,8,9]])
# p x
# p x[0]
# p x[1][0]

c = Matr.new(m: [[1,2],[4,5]])
p c.determinant