require_relative '../Solver'

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
    expect(res1).to eq(40320)
    expect(res2).to eq(1)
  end

  it "raises an error when given a negative number" do
    expect { Solver.new.factorial(-1) }.to raise_error(ArgumentError)
    end
end