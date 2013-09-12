require 'spec_helper'

def create_urgency_category
  UrgencyCategory.create!(valid_attributes)
end

describe UrgencyCategoriesController do
  before :each do
    create_and_sign_in
  end

  let(:valid_attributes) { {name: "Urgency category", number: 1, acceptable_wait_hours: 1, acceptable_wait_minutes: 10} }

  describe "GET methods" do
    before do
    end

    it "assigns all urgency categories" do
      urgency_category = create_urgency_category
      get :index
      assigns(:urgency_categories).should eq([urgency_category])
    end

    it "finds the correct category" do
      urgency_category = create_urgency_category
      get :show, {id: urgency_category.to_param}
      assigns(:urgency_category).should eq(urgency_category)
    end

    it "sends a new object" do
      get :new
      assigns(:urgency_category).should be_a_new(UrgencyCategory)
    end

    it "returns the object for editing" do
      urgency_category = create_urgency_category
      get :edit, {id: urgency_category.to_param}
    end

    describe "POST methods" do
      describe "with valid parameters" do
        it "creates a new category" do
          expect {
            post :create, {urgency_category: valid_attributes}
          }.to change(UrgencyCategory, :count).by(1)
        end
      end
      describe "with invalid parameters" do
        it "remembers parameters but does not save" do
          UrgencyCategory.any_instance.stub(:save).and_return(false)
          post :create, {urgency_category: {name: "Invalid name"}}
          assigns(:urgency_category).should be_a_new(UrgencyCategory)
        end

        it "renders the new template again" do
          UrgencyCategory.any_instance.stub(:save).and_return(false)
          post :create, {urgency_category: {name: "Invalid name"}}
          response.should render_template(:new)
        end
      end
    end


  end
  describe "PUT methods" do
    describe "With valid parameters" do
      it "updates the urgency category" do
        urgency_category = create_urgency_category
        UrgencyCategory.any_instance.should_receive(:update).with({"name" => "Some string"})
        put :update, {id: urgency_category.to_param, urgency_category: {name: "Some string"}}
      end

    end
  end

  describe "DELETE methods" do
    it "destroys the urgency category" do
      urgency_category = create_urgency_category
      expect {
        delete :destroy, {id: urgency_category.to_param}
      }.to change(UrgencyCategory, :count).by(-1)
    end
  end

end