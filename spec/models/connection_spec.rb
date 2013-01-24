require 'spec_helper'

describe Connection do
  before do
    @connection = FactoryGirl.create :connection
  end

  subject { @connection }

  it { should respond_to :way }
  it { should respond_to :operation }
  it { should respond_to :inoutput }

  describe "with invalid attributes" do
    after(:each) do
      it { should_not be_valid }
    end

    describe "with no way" do
      before { @document.way = "" }
    end

    describe "with invalid way" do
      before { @document.way = "backword" }
    end

    describe "without operation" do
      before { @document.operation = nil }
    end

    describe "without inoutput" do
      before { @document.inoutput = nil }
    end
  end

end
