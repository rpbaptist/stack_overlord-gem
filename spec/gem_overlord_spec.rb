require 'spec_helper'

describe Stackoverlord  do
  subject {Stackoverlord.new}

  describe '#method' do
    let(:sample_error) {1/0}

  it 'collects errors' do
    expect(sample_error).to be_an(Exception)
    end
  end

end
