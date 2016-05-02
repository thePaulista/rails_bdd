require 'rails_helper'

describe ReadersController do
  describe "GET new" do
    let(:reader) { mock_model("Reader").as_new_record }

    it "assigns @reader variable to the view" do
      reader = mock_model("Reader").as_new_record
      Reader.stub(:new).and_return(reader)
      get :new

      expect(assigns[:reader]).to eq(reader)
    end

    it "renders new template" do
      get :new
      expect(response).to render_template :new
    end
  end
end
