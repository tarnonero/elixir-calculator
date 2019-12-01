defmodule CalculatorTest do
  use ExUnit.Case, async: true
  doctest Calculator

  test "adding two negative numbers" do
    assert Operation.add(-4,-4) == -8
  end

  test "adding one negative number and one positive number" do
    assert Operation.add(-2, 4) == 2
  end

  test "Adding two positive numbers" do
    assert Operation.add(2, 2) == 4
  end

  test "Substracting two positive numbers" do
    assert Operation.substract(4, 2) == 2
  end

  test "Substracting two negative numbers" do
    assert Operation.substract(-4, -2) == -2
  end

  test "Substracting one negative number and one positive number" do
    assert Operation.substract(-4, 3) == -7
  end

  test "Multiplying two negative numbers" do
    assert Operation.multiply(-2, -3) == 6
  end

  test "Multiplying one positive number and one negative number" do
    assert Operation.multiply(2, -3) == -6
  end

  test "Multiplying two positive numbers" do
    assert Operation.multiply(2, 3) == 6
  end

  test "Division by zero" do
    catch_error(Operation.divide(0 / 0))
  end

  test "Dividing two positive numbers" do
    assert Operation.divide(4, 2) == 2
  end

  test "Dividing two floats" do
    assert Operation.divide(10.0, 3.0) == 3.3333333333333335
  end

  test "Dividing two negative numbers" do
    assert Operation.divide(-4, -2) == 2
  end

  test "Dividing one negative number and one positive number" do
    assert Operation.divide(-12, 4) == -3
  end
end
