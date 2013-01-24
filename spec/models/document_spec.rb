require 'spec_helper'

describe Document do
  before do
    @document = FactoryGirl.create :document
  end

  subject { @document }

  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :purpose }
  it { should respond_to :metrics }
  it { should respond_to :operations }

  describe "with invalid attributes" do

    after(:each) do
      it { should_not be_valid }
    end

    describe "with empty name" do
      before { @document.name = "" }
    end

    describe "without purpose" do
      before { @document.purpose = "" }
    end

    describe "with empty description" do
      before { @document.description = "" }
    end

    describe "with empty metrics" do
      before { @document.metrics = "" }
    end

  end

  describe "the same name twice" do
    before do
      @another_document = FactoryGirl.build :document
      @another_document.name = @document.name
    end

    subject { @another_document }

    it { should_not be_valid }
  end

  describe "when destroyed" do
    it "should destroy operation" do
      @operation = FactoryGirl.create :operation, document: @document
      expect { @document.destroy }.to change(Operation, :count).by(-1)
    end
  end
end
