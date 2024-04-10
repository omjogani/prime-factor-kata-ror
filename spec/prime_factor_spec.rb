require_relative '../prime_factor'

describe PrimeFactor do
  describe '#edgecase' do
    context 'should handle zero and negative number' do
      it 'should raise error if number is zero' do
        expect { PrimeFactor.calculatePrimeFactor(0) }.to raise_error("Invalid Number!")
      end

      it 'should raise error if number is negative' do
        expect { PrimeFactor.calculatePrimeFactor(-1) }.to raise_error("Invalid Number!")
      end
    end
  end

  describe '#positive_numbers' do
    context 'return empty list' do
      it 'if there are no prime factors' do
        result = PrimeFactor.calculatePrimeFactor(1)
        expect(result.size).to be(0)
      end
    end

    context 'return prime factors of number' do
      it 'should return prime factors if number is 2' do
        result = PrimeFactor.calculatePrimeFactor(2)
        expect(result).to eq([2])
      end

      it 'should return prime factor if number is 3' do
        expect(PrimeFactor.calculatePrimeFactor(3)).to eq([3])
      end

      it 'should return correct prime factor' do
        expect(PrimeFactor.calculatePrimeFactor(4)).to eq([2, 2])
        expect(PrimeFactor.calculatePrimeFactor(6)).to eq([2, 3])
        expect(PrimeFactor.calculatePrimeFactor(8)).to eq([2, 2, 2])
        expect(PrimeFactor.calculatePrimeFactor(9)).to eq([3, 3])
        expect(PrimeFactor.calculatePrimeFactor(25)).to eq([5, 5])
        expect(PrimeFactor.calculatePrimeFactor(27)).to eq([3, 3, 3])
        expect(PrimeFactor.calculatePrimeFactor(13123)).to eq([11, 1193])
      end
    end
  end
end
