require 'spec_helper'

describe Operation do
  before do
    @operation = FactoryGirl.create :operation
  end

  subject { @operation }

  it { should respond_to :exceptions }
  it { should respond_to :goal }
  it { should respond_to :name }
  it { should respond_to :steps }
  it { should respond_to :worker }
  it { should respond_to :document }
  it { should respond_to :connections }
  it { should respond_to :inoutputs }
  it { should respond_to :rank }

  describe "with invalid attributes" do
    after(:each) do
      it { should_not be_valid }
    end

    describe "with empty excpetions" do
      before { @operation.name = "" }
    end

    describe "with empty goals" do
      before { @operation.goal = "" }
    end

    describe "with empty steps" do
      before { @operation.steps = "" }
    end


    describe "with empty worker" do
      before { @operation.worker = "" }
    end

    describe "with no document" do
      before { @operation.document = nil }
    end
  end

  describe "when destroyed" do
    it "should destroy connection" do
      @connection = FactoryGirl.create(:connection, operation: @operation)
      @connections_count = @operation.connections.count
      expect { @operation.destroy }.to change(Connection, :count).by(-@connections_count)
    end
  end

end
