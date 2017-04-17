require 'spec_helper'

describe Ruborithms::Algorithms::SelectionSort do
  class DummyArray < Array; include Ruborithms::Algorithms::SelectionSort; end

  let!(:sample_array) { [-4, 1, 0, 5, 198, 22, 82, 1001] }
  let!(:empty_array) { [] }

  context 'when in the class context' do
    subject { DummyArray }

    it { expect(subject.b
  end

  context 'when in a sample array context' do
    subject { DummyArray.new(sample_array) }
  end

  context 'when in a empty array context' do
    subject { DummyArray.new(empty_array) }
  end
end
