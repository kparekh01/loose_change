require 'rspec'


  def money_change(money)
    blank = []
    while money > 0
      if money >= 25
        money -= 25
        blank << 25
      elsif money >= 10
        money -= 10
        blank << 10
      elsif money >= 5
        money -= 5
        blank << 5
      else
      money -= 1
      blank << 1
      end
    end
    blank
  end




describe '#change' do
    it 'returns 1 ' do
      expect(money_change(1)).to eq([1])
    end
end

describe '#change' do
    it "returns 5 for 5" do
      expect(money_change(5)).to eq([5])
    end
end

describe '#change' do
    it "returns [5, 1] for 6" do
      expect(money_change(6)).to eq([5,1])
    end
end

describe '#change' do
    it "returns [10] for 10" do
      expect(money_change(10)).to eq([10])
    end
end

describe '#change' do
    it "returns [25] for 25" do
      expect(money_change(25)).to eq([25])
    end
end
