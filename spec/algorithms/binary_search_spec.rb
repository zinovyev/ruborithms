require 'spec_helper'

describe Ruborithms::Algorithms::BinarySearch do
  class DummyArray < Array; end

  let(:sample_array) { [-4, 1, 5, 22, 82, 192, 1001] }
  let(:empty_array) { [] }

  context 'when in a class context' do
    subject { DummyArray.include Ruborithms::Algorithms::BinarySearch }

    it { expect(subject.binary_search(sample_array, 22)).to eq(3) }
    it { expect(subject.binary_search(sample_array, 21)).to eq(nil) }
    it { expect(subject.binary_search(empty_array, 22)).to eq(nil) }
  end

  context 'when in a sample array' do
    subject do
      DummyArray
        .include(Ruborithms::Algorithms::BinarySearch)
        .new(sample_array)
    end

    it 'should find existing element in array' do
      expect(subject.binary_search(22)).to eq(3)
    end

    it 'should return nil if element was not found' do
      expect(subject.binary_search(21)).to eq(nil)
    end
  end

  context 'when in an empty array' do
    subject do
      DummyArray
        .include(Ruborithms::Algorithms::BinarySearch)
        .new(empty_array)
    end

    it 'should return nil if element was not found' do
      expect(subject.binary_search(22)).to eq(nil)
    end
  end
end
