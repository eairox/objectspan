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

describe VisibilitiesController do

  # This should return the minimal set of attributes required to create a valid
  # Visibility. As you add validations to Visibility, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VisibilitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all visibilities as @visibilities" do
      visibility = Visibility.create! valid_attributes
      get :index, {}, valid_session
      assigns(:visibilities).should eq([visibility])
    end
  end

  describe "GET show" do
    it "assigns the requested visibility as @visibility" do
      visibility = Visibility.create! valid_attributes
      get :show, {:id => visibility.to_param}, valid_session
      assigns(:visibility).should eq(visibility)
    end
  end

  describe "GET new" do
    it "assigns a new visibility as @visibility" do
      get :new, {}, valid_session
      assigns(:visibility).should be_a_new(Visibility)
    end
  end

  describe "GET edit" do
    it "assigns the requested visibility as @visibility" do
      visibility = Visibility.create! valid_attributes
      get :edit, {:id => visibility.to_param}, valid_session
      assigns(:visibility).should eq(visibility)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Visibility" do
        expect {
          post :create, {:visibility => valid_attributes}, valid_session
        }.to change(Visibility, :count).by(1)
      end

      it "assigns a newly created visibility as @visibility" do
        post :create, {:visibility => valid_attributes}, valid_session
        assigns(:visibility).should be_a(Visibility)
        assigns(:visibility).should be_persisted
      end

      it "redirects to the created visibility" do
        post :create, {:visibility => valid_attributes}, valid_session
        response.should redirect_to(Visibility.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved visibility as @visibility" do
        # Trigger the behavior that occurs when invalid params are submitted
        Visibility.any_instance.stub(:save).and_return(false)
        post :create, {:visibility => {}}, valid_session
        assigns(:visibility).should be_a_new(Visibility)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Visibility.any_instance.stub(:save).and_return(false)
        post :create, {:visibility => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested visibility" do
        visibility = Visibility.create! valid_attributes
        # Assuming there are no other visibilities in the database, this
        # specifies that the Visibility created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Visibility.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => visibility.to_param, :visibility => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested visibility as @visibility" do
        visibility = Visibility.create! valid_attributes
        put :update, {:id => visibility.to_param, :visibility => valid_attributes}, valid_session
        assigns(:visibility).should eq(visibility)
      end

      it "redirects to the visibility" do
        visibility = Visibility.create! valid_attributes
        put :update, {:id => visibility.to_param, :visibility => valid_attributes}, valid_session
        response.should redirect_to(visibility)
      end
    end

    describe "with invalid params" do
      it "assigns the visibility as @visibility" do
        visibility = Visibility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Visibility.any_instance.stub(:save).and_return(false)
        put :update, {:id => visibility.to_param, :visibility => {}}, valid_session
        assigns(:visibility).should eq(visibility)
      end

      it "re-renders the 'edit' template" do
        visibility = Visibility.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Visibility.any_instance.stub(:save).and_return(false)
        put :update, {:id => visibility.to_param, :visibility => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested visibility" do
      visibility = Visibility.create! valid_attributes
      expect {
        delete :destroy, {:id => visibility.to_param}, valid_session
      }.to change(Visibility, :count).by(-1)
    end

    it "redirects to the visibilities list" do
      visibility = Visibility.create! valid_attributes
      delete :destroy, {:id => visibility.to_param}, valid_session
      response.should redirect_to(visibilities_url)
    end
  end

end