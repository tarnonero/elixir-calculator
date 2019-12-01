defmodule Calculator do
  @moduledoc """
  This module simulates the simple calculator and executes four simple operations:
  adding, substracting, multiplying and dividing.
  The main function calls the execute function which calls the get_numbers function.
  The get_numbers function gets the user's input and returns a list of integers to the get_result function.
  The calculates function then calls the set_operation function which sets up one of the four avaliable operation
  and passes the list of numbers to the chosen one. At the end it executes the operation and returns the result to the main function.
  """

  def main() do
    result = execute(get_numbers())
    result
  end

  defp get_numbers() do
    number1 =
      IO.gets("Insert number 1: ")
      |> String.trim()
      |> String.to_integer()

    number2 =
      IO.gets("Insert number 2: ")
      |> String.trim()
      |> String.to_integer()

    numbers = [number1, number2]
    numbers
  end

  defp execute(numbers) do
    number1 = List.first(numbers)
    number2 = List.last(numbers)
    set_operation(number1, number2)
  end

  defp set_operation(number1, number2) do
    IO.puts("Which operation do you want to execute ?
    1. Add
    2. Substract
    3. Multiply
    4. Divide ")

    operation =
      IO.gets("Your choice: ")
      |> String.trim()

    case operation do
      "1" -> Operation.add(number1, number2)
      "2" -> Operation.substract(number1, number2)
      "3" -> Operation.multiply(number1, number2)
      "4" -> Operation.divide(number1, number2)
    end
  end
end
