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

describe ExchangeDurationTypesController do

  # This should return the minimal set of attributes required to create a valid
  # ExchangeDurationType. As you add validations to ExchangeDurationType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExchangeDurationTypesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all exchange_duration_types as @exchange_duration_types" do
      exchange_duration_type = ExchangeDurationType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:exchange_duration_types).should eq([exchange_duration_type])
    end
  end

  describe "GET show" do
    it "assigns the requested exchange_duration_type as @exchange_duration_type" do
      exchange_duration_type = ExchangeDurationType.create! valid_attributes
      get :show, {:id => exchange_duration_type.to_param}, valid_session
      assigns(:exchange_duration_type).should eq(exchange_duration_type)
    end
  end

  describe "GET new" do
    it "assigns a new exchange_duration_type as @exchange_duration_type" do
      get :new, {}, valid_session
      assigns(:exchange_duration_type).should be_a_new(ExchangeDurationType)
    end
  end

  describe "GET edit" do
    it "assigns the requested exchange_duration_type as @exchange_duration_type" do
      exchange_duration_type = ExchangeDurationType.create! valid_attributes
      get :edit, {:id => exchange_duration_type.to_param}, valid_session
      assigns(:exchange_duration_type).should eq(exchange_duration_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ExchangeDurationType" do
        expect {
          post :create, {:exchange_duration_type => valid_attributes}, valid_session
        }.to change(ExchangeDurationType, :count).by(1)
      end

      it "assigns a newly created exchange_duration_type as @exchange_duration_type" do
        post :create, {:exchange_duration_type => valid_attributes}, valid_session
        assigns(:exchange_duration_type).should be_a(ExchangeDurationType)
        assigns(:exchange_duration_type).should be_persisted
      end

      it "redirects to the created exchange_duration_type" do
        post :create, {:exchange_duration_type => valid_attributes}, valid_session
        response.should redirect_to(ExchangeDurationType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved exchange_duration_type as @exchange_duration_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExchangeDurationType.any_instance.stub(:save).and_return(false)
        post :create, {:exchange_duration_type => {}}, valid_session
        assigns(:exchange_duration_type).should be_a_new(ExchangeDurationType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExchangeDurationType.any_instance.stub(:save).and_return(false)
        post :create, {:exchange_duration_type => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested exchange_duration_type" do
        exchange_duration_type = ExchangeDurationType.create! valid_attributes
        # Assuming there are no other exchange_duration_types in the database, this
        # specifies that the ExchangeDurationType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ExchangeDurationType.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => exchange_duration_type.to_param, :exchange_duration_type => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested exchange_duration_type as @exchange_duration_type" do
        exchange_duration_type = ExchangeDurationType.create! valid_attributes
        put :update, {:id => exchange_duration_type.to_param, :exchange_duration_type => valid_attributes}, valid_session
        assigns(:exchange_duration_type).should eq(exchange_duration_type)
      end

      it "redirects to the exchange_duration_type" do
        exchange_duration_type = ExchangeDurationType.create! valid_attributes
        put :update, {:id => exchange_duration_type.to_param, :exchange_duration_type => valid_attributes}, valid_session
        response.should redirect_to(exchange_duration_type)
      end
    end

    describe "with invalid params" do
      it "assigns the exchange_duration_type as @exchange_duration_type" do
        exchange_duration_type = ExchangeDurationType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ExchangeDurationType.any_instance.stub(:save).and_return(false)
        put :update, {:id => exchange_duration_type.to_param, :exchange_duration_type => {}}, valid_session
        assigns(:exchange_duration_type).should eq(exchange_duration_type)
      end

      it "re-renders the 'edit' template" do
        exchange_duration_type = ExchangeDurationType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ExchangeDurationType.any_instance.stub(:save).and_return(false)
        put :update, {:id => exchange_duration_type.to_param, :exchange_duration_type => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested exchange_duration_type" do
      exchange_duration_type = ExchangeDurationType.create! valid_attributes
      expect {
        delete :destroy, {:id => exchange_duration_type.to_param}, valid_session
      }.to change(ExchangeDurationType, :count).by(-1)
    end

    it "redirects to the exchange_duration_types list" do
      exchange_duration_type = ExchangeDurationType.create! valid_attributes
      delete :destroy, {:id => exchange_duration_type.to_param}, valid_session
      response.should redirect_to(exchange_duration_types_url)
    end
  end

end
