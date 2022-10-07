require_relative '../solver'

describe 'factorial method' do
  it 'returns a number' do
    solver = Solver.new
    res = solver.factorial(5)
    expect(res).to be_kind_of(Numeric)
  end

  it 'returns the factorial for a number input' do
    solver = Solver.new
    res = solver.factorial(5)
    res1 = solver.factorial(8)
    res2 = solver.factorial(0)
    expect(res).to eq(120)
    expect(res1).to eq(40_320)
    expect(res2).to eq(1)
  end

  it 'raises an error when given a negative number' do
    expect { Solver.new.factorial(-1) }.to raise_error(ArgumentError)
  end
end

describe '#reverse' do
  it 'returns reverse a word' do
    solver = Solver.new
    result1 = solver.reverse('hello')
    result2 = solver.reverse('goodbye')
    expect(result1).to eq('olleh')
    expect(result2).to eq('eybdoog')
  end
end

describe '#fizzbuzz' do
  it 'returns fizz' do
    solver = Solver.new
    result = solver.fizzbuzz(3)
    expect(result).to eq('fizz')
  end

  it 'returns buzz' do
    solver = Solver.new
    result = solver.fizzbuzz(5)
    expect(result).to eq('buzz')
  end

  it 'returns fizzzbuzz' do
    solver = Solver.new
    result = solver.fizzbuzz(15)
    expect(result).to eq('fizzbuzz')
  end

  it 'returns the input number as a string' do
    solver = Solver.new
    result = solver.fizzbuzz(7)
    expect(result).to eq('7')
  end
end
