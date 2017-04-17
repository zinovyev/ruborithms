require 'spec_helper'

describe Ruborithms::Algorithms::SelectionSort do
  class DummyArray < Array; include Ruborithms::Algorithms::SelectionSort; end

  let(:sample_array) { [-4, 1, 22, 0, 5, 198, 22, 82, 1001] }
  let(:ordered_array) { [-4, 0, 1, 5, 22, 22, 82, 198, 1001] }
  let(:empty_array) { [] }

  context 'when in the class context' do
    subject { DummyArray.include Ruborithms::Algorithms::SelectionSort }

    it { expect(subject.selection_sort(sample_array)).to eq(ordered_array) }
    it { expect(subject.selection_sort(ordered_array)).to eq(ordered_array) }
    it { expect(subject.selection_sort(empty_array)).to eq(empty_array) }
  end

  context 'when in the sample array context' do
    subject do
      DummyArray
        .include(Ruborithms::Algorithms::SelectionSort)
        .new(sample_array)
    end

    it { expect(subject.selection_sort).to eq(ordered_array) }
  end

  context 'when in the ordered array context' do
    subject do
      DummyArray
        .include(Ruborithms::Algorithms::SelectionSort)
        .new(ordered_array)
    end

    it { expect(subject.selection_sort).to eq(ordered_array) }
  end

  context 'when in the empty array context' do
    subject do
      DummyArray
        .include(Ruborithms::Algorithms::SelectionSort)
        .new(empty_array)
    end

    it { expect(subject.selection_sort).to eq(empty_array) }
  end
end
