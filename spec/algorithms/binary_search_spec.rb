require 'spec_helper'

describe Ruborithms::Algorithms::BinarySearch do
  class DummyArray < Array; extend Ruborithms::Algorithms::BinarySearch; end
  subject do
    DummyArray.new([-4, 1, 5, 22, 82, 192, 1001])
  end

  it 'should find existing element in array' do
  end

  it 'should return nil if element was not found' do
  end
end
