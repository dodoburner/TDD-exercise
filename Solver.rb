class Solver
  def factorial(num)
    begin
      !num.positive?
    rescue => exception
      puts exception
    end

    if (num == 0) 
      1
    end

    res = 1
    while num > 1 do
      res = res * num
      num = num - 1
    end
    res
  end
end