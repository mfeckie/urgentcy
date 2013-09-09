require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SurgicalSpecialtiesController do

  # This should return the minimal set of attributes required to create a valid
  # SurgicalSpecialty. As you add validations to SurgicalSpecialty, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SurgicalSpecialtiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all surgical_specialties as @surgical_specialties" do
      surgical_specialty = SurgicalSpecialty.create! valid_attributes
      get :index, {}, valid_session
      assigns(:surgical_specialties).should eq([surgical_specialty])
    end
  end

  describe "GET show" do
    it "assigns the requested surgical_specialty as @surgical_specialty" do
      surgical_specialty = SurgicalSpecialty.create! valid_attributes
      get :show, {:id => surgical_specialty.to_param}, valid_session
      assigns(:surgical_specialty).should eq(surgical_specialty)
    end
  end

  describe "GET new" do
    it "assigns a new surgical_specialty as @surgical_specialty" do
      get :new, {}, valid_session
      assigns(:surgical_specialty).should be_a_new(SurgicalSpecialty)
    end
  end

  describe "GET edit" do
    it "assigns the requested surgical_specialty as @surgical_specialty" do
      surgical_specialty = SurgicalSpecialty.create! valid_attributes
      get :edit, {:id => surgical_specialty.to_param}, valid_session
      assigns(:surgical_specialty).should eq(surgical_specialty)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SurgicalSpecialty" do
        expect {
          post :create, {:surgical_specialty => valid_attributes}, valid_session
        }.to change(SurgicalSpecialty, :count).by(1)
      end

      it "assigns a newly created surgical_specialty as @surgical_specialty" do
        post :create, {:surgical_specialty => valid_attributes}, valid_session
        assigns(:surgical_specialty).should be_a(SurgicalSpecialty)
        assigns(:surgical_specialty).should be_persisted
      end

      it "redirects to the created surgical_specialty" do
        post :create, {:surgical_specialty => valid_attributes}, valid_session
        response.should redirect_to(SurgicalSpecialty.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved surgical_specialty as @surgical_specialty" do
        # Trigger the behavior that occurs when invalid params are submitted
        SurgicalSpecialty.any_instance.stub(:save).and_return(false)
        post :create, {:surgical_specialty => { "name" => "invalid value" }}, valid_session
        assigns(:surgical_specialty).should be_a_new(SurgicalSpecialty)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SurgicalSpecialty.any_instance.stub(:save).and_return(false)
        post :create, {:surgical_specialty => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested surgical_specialty" do
        surgical_specialty = SurgicalSpecialty.create! valid_attributes
        # Assuming there are no other surgical_specialties in the database, this
        # specifies that the SurgicalSpecialty created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SurgicalSpecialty.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => surgical_specialty.to_param, :surgical_specialty => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested surgical_specialty as @surgical_specialty" do
        surgical_specialty = SurgicalSpecialty.create! valid_attributes
        put :update, {:id => surgical_specialty.to_param, :surgical_specialty => valid_attributes}, valid_session
        assigns(:surgical_specialty).should eq(surgical_specialty)
      end

      it "redirects to the surgical_specialty" do
        surgical_specialty = SurgicalSpecialty.create! valid_attributes
        put :update, {:id => surgical_specialty.to_param, :surgical_specialty => valid_attributes}, valid_session
        response.should redirect_to(surgical_specialty)
      end
    end

    describe "with invalid params" do
      it "assigns the surgical_specialty as @surgical_specialty" do
        surgical_specialty = SurgicalSpecialty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SurgicalSpecialty.any_instance.stub(:save).and_return(false)
        put :update, {:id => surgical_specialty.to_param, :surgical_specialty => { "name" => "invalid value" }}, valid_session
        assigns(:surgical_specialty).should eq(surgical_specialty)
      end

      it "re-renders the 'edit' template" do
        surgical_specialty = SurgicalSpecialty.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SurgicalSpecialty.any_instance.stub(:save).and_return(false)
        put :update, {:id => surgical_specialty.to_param, :surgical_specialty => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested surgical_specialty" do
      surgical_specialty = SurgicalSpecialty.create! valid_attributes
      expect {
        delete :destroy, {:id => surgical_specialty.to_param}, valid_session
      }.to change(SurgicalSpecialty, :count).by(-1)
    end

    it "redirects to the surgical_specialties list" do
      surgical_specialty = SurgicalSpecialty.create! valid_attributes
      delete :destroy, {:id => surgical_specialty.to_param}, valid_session
      response.should redirect_to(surgical_specialties_url)
    end
  end

end
