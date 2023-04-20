require_relative '../lib/matrichka'
require 'test/unit'

class MatrichkaTest < Test::Unit::TestCase
  def test_index
    m = Matr.new([[1, 2], [3, 4]])
    assert_equal 1, m[0][0]
    assert_equal 2, m[0][1]
    assert_equal 3, m[1][0]
    assert_equal 4, m[1][1]
  end

  def test_if_matrichka_square
    m1 = Matr.new([[1, 5], [-1, 4]])
    m2 = Matr.new([[1, 5], [-1, 4], [1, 5]])
    m3 = Matr.new([[1, 5, 8], [-1, 4, 5]])
    assert_true m1.square?
    assert_false m2.square?
    assert_false m3.square?
  end

  def test_addition
    m = Matr.new([[1, 5], [-1, 4]])
    n = Matr.new([[-9, 6], [7, 1]])
    assert_equal Matr.new([[-8, 11], [6, 5]]), m + n
  end

  def test_addition_commutativity
    m = Matr.new([[1, 5], [-1, 4]])
    n = Matr.new([[-9, 6], [7, 1]])
    assert_equal n + m, m + n
  end

  def test_multiplication
    m = Matr.new([[1, 3], [-2, 3]])
    n = Matr.new([[-7, 3], [10, 7]])
    assert_equal Matr.new([[23, 24], [44, 15]]), m * n
    assert_equal Matr.new([[-13, -12], [-4, 51]]), n * m
  end

  def test_multiplication_of_a_number
    m = Matr.new([[4, 9], [-5, 1]])
    a, b = 10, -10
    assert_equal Matr.new([[40, 90], [-50, 10]]), m * a
    assert_equal Matr.new([[-40, -90], [50, -10]]), m * b
  end

  def test_multiplication_is_not_commutative
    m = Matr.new([[4, 9], [-5, 1]])
    n = Matr.new([[-3, 3], [0, 2]])
    assert_not_equal m * n, n * m
  end

  def test_multiplication_error
    m = Matr.new([[4, 9], [-5, 1]])
    n = Matr.new([[-3, 3], [0, 2], [1, 2]])
    assert_raise(MatrichkaExceptions::RowsColsMismatchErr) {m * n}
  end

  def test_determinant
    m1 = Matr.new([5])
    m2 = Matr.new([[1, 3], [-2, 5]])
    m3 = Matr.new([[1, 3, -9], [-2, 5, 7], [4, -6, 8]])
    assert_equal 5, m1.determinant
    assert_equal 11, m2.determinant
    assert_equal 286, m3.determinant
  end

  def test_determinant_errors
    m1 = Matr.new([1, 2])
    m2 = Matr.new([[1, 2, 7], [3, 4, 5]])
    m3 = Matr.new([[1, 2], [3, 4], [5, 6]])
    m4 = Matr.new([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]])
    assert_raise(MatrichkaExceptions::MatrichkaIsNotSquare) {m1.determinant}
    assert_raise(MatrichkaExceptions::MatrichkaIsNotSquare) {m2.determinant}
    assert_raise(MatrichkaExceptions::MatrichkaIsNotSquare) {m3.determinant}
    assert_raise(MatrichkaExceptions::CantEvalDetErr) {m4.determinant}
  end
end
