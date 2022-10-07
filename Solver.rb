class Solver
  def factorial(n)  
    raise ArgumentError, "Only positive integers are allowed" if n < 0
    return 1 if n == 0
    (1..n).inject(:*)
    end
end
