require 'spec_helper'

describe Inoutput do
  before { @inoutput = FactoryGirl.create :inoutput }

  it { should respond_to :connections }
  it { should respond_to :operations }

  describe "with invalid attributes" do
    after(:each) do
      it { should_not be_valid }
    end

    describe "without body" do
      before { @inoutput.body = "" }
    end
  end
end
