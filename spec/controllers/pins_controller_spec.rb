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

describe PinsController do
  login_user
  # This should return the minimal set of attributes required to create a valid
  # Pin. As you add validations to Pin, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { FactoryGirl.attributes_for(:pin) }
 
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PinsController. Be sure to keep this updated too.
  
 
  describe "GET index" do
    it "assigns all pins as @pins" do
      pin = Pin.create! valid_attributes
      get :index, {}
      assigns(:pins).should eq([pin])
    end
  end

  describe "GET show" do
    it "assigns the requested pin as @pin" do
      pin = Pin.create! valid_attributes
      get :show, {:id => pin.to_param}
      assigns(:pin).should eq(pin)
    end
  end

  describe "GET new" do
    it "assigns a new pin as @pin" do
      get :new, {}
      assigns(:pin).should be_a_new(Pin)
    end
  end

  describe "GET edit" do
    it "assigns the requested pin as @pin" do
      pin = Pin.create! valid_attributes
      get :edit, {:id => pin.to_param}
      assigns(:pin).should eq(pin)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Pin" do
        expect {
          post :create, {:pin => valid_attributes}
        }.to change(Pin, :count).by(1)
      end

      it "assigns a newly created pin as @pin" do
        post :create, {:pin => valid_attributes}
        assigns(:pin).should be_a(Pin)
        assigns(:pin).should be_persisted
      end

      it "redirects to the created pin" do
        post :create, {:pin => valid_attributes}
        response.should redirect_to(Pin.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pin as @pin" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pin.any_instance.stub(:save).and_return(false)
        post :create, {:pin => { "title" => "invalid value" }}
        assigns(:pin).should be_a_new(Pin)
      end

      it "assigns a new pin without type_id" do
        pin = FactoryGirl.build(:pin, type_id: '')
        expect(pin).to have(1).errors_on(:type_id)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Pin.any_instance.stub(:save).and_return(false)
        post :create, {:pin => { "title" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested pin" do
        pin = Pin.create! valid_attributes
        # Assuming there are no other pins in the database, this
        # specifies that the Pin created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Pin.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => pin.to_param, :pin => { "title" => "MyString" }}
      end

      it "assigns the requested pin as @pin" do
        pin = Pin.create! valid_attributes
        put :update, {:id => pin.to_param, :pin => valid_attributes}
        assigns(:pin).should eq(pin)
      end

      it "redirects to the pin" do
        pin = Pin.create! valid_attributes
        put :update, {:id => pin.to_param, :pin => valid_attributes}
        response.should redirect_to(pin)
      end
    end

    describe "with invalid params" do
      it "assigns the pin as @pin" do
        pin = Pin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pin.any_instance.stub(:save).and_return(false)
        put :update, {:id => pin.to_param, :pin => { "title" => "invalid value" }}
        assigns(:pin).should eq(pin)
      end

      it "re-renders the 'edit' template" do
        pin = Pin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Pin.any_instance.stub(:save).and_return(false)
        put :update, {:id => pin.to_param, :pin => { "title" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested pin" do
      pin = Pin.create! valid_attributes
      expect {
        delete :destroy, {:id => pin.to_param}
      }.to change(Pin, :count).by(-1)
    end

    it "redirects to the pins list" do
      pin = Pin.create! valid_attributes
      delete :destroy, {:id => pin.to_param}
      response.should redirect_to(pins_url)
    end
  end

end
