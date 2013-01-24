require 'spec_helper'

describe "Documents pages" do

  subject { page }

  describe "create document" do
    before { visit new_document_path }

    describe "with invalid information" do
      it "should not create a document" do
        expect { click_button "Save" }.not_to change(:Document, :count)
      end

      it "should show error messages" do
        before { click_button "Save" }
        it { should have_content 'error' }
      end
    end

    describe "with valid information" do
      before do
        fill_in 'document_name', with: 'Lorem Ipsum'
        fill_in 'document_description', with: 'Lorem Ipsum'
        fill_in 'document_metrics', with: 'Lorem Ipsum'
        fill_in 'document_purpose', with: 'Lorem Ipsum'
        fill_in 'document_metrics', with: 'Lorem Ipsum'
      end

      it "should create a document" do
        expect { click_button "Save" }.not_to change(:Document, :count).by(1)
      end

    end


  end

end
