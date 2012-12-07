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

describe CompanyCategoryReturnPoliciesController do

  # This should return the minimal set of attributes required to create a valid
  # CompanyCategoryReturnPolicy. As you add validations to CompanyCategoryReturnPolicy, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CompanyCategoryReturnPoliciesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all company_category_return_policies as @company_category_return_policies" do
      company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
      get :index, {}, valid_session
      assigns(:company_category_return_policies).should eq([company_category_return_policy])
    end
  end

  describe "GET show" do
    it "assigns the requested company_category_return_policy as @company_category_return_policy" do
      company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
      get :show, {:id => company_category_return_policy.to_param}, valid_session
      assigns(:company_category_return_policy).should eq(company_category_return_policy)
    end
  end

  describe "GET new" do
    it "assigns a new company_category_return_policy as @company_category_return_policy" do
      get :new, {}, valid_session
      assigns(:company_category_return_policy).should be_a_new(CompanyCategoryReturnPolicy)
    end
  end

  describe "GET edit" do
    it "assigns the requested company_category_return_policy as @company_category_return_policy" do
      company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
      get :edit, {:id => company_category_return_policy.to_param}, valid_session
      assigns(:company_category_return_policy).should eq(company_category_return_policy)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CompanyCategoryReturnPolicy" do
        expect {
          post :create, {:company_category_return_policy => valid_attributes}, valid_session
        }.to change(CompanyCategoryReturnPolicy, :count).by(1)
      end

      it "assigns a newly created company_category_return_policy as @company_category_return_policy" do
        post :create, {:company_category_return_policy => valid_attributes}, valid_session
        assigns(:company_category_return_policy).should be_a(CompanyCategoryReturnPolicy)
        assigns(:company_category_return_policy).should be_persisted
      end

      it "redirects to the created company_category_return_policy" do
        post :create, {:company_category_return_policy => valid_attributes}, valid_session
        response.should redirect_to(CompanyCategoryReturnPolicy.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved company_category_return_policy as @company_category_return_policy" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompanyCategoryReturnPolicy.any_instance.stub(:save).and_return(false)
        post :create, {:company_category_return_policy => {}}, valid_session
        assigns(:company_category_return_policy).should be_a_new(CompanyCategoryReturnPolicy)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CompanyCategoryReturnPolicy.any_instance.stub(:save).and_return(false)
        post :create, {:company_category_return_policy => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested company_category_return_policy" do
        company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
        # Assuming there are no other company_category_return_policies in the database, this
        # specifies that the CompanyCategoryReturnPolicy created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CompanyCategoryReturnPolicy.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => company_category_return_policy.to_param, :company_category_return_policy => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested company_category_return_policy as @company_category_return_policy" do
        company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
        put :update, {:id => company_category_return_policy.to_param, :company_category_return_policy => valid_attributes}, valid_session
        assigns(:company_category_return_policy).should eq(company_category_return_policy)
      end

      it "redirects to the company_category_return_policy" do
        company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
        put :update, {:id => company_category_return_policy.to_param, :company_category_return_policy => valid_attributes}, valid_session
        response.should redirect_to(company_category_return_policy)
      end
    end

    describe "with invalid params" do
      it "assigns the company_category_return_policy as @company_category_return_policy" do
        company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompanyCategoryReturnPolicy.any_instance.stub(:save).and_return(false)
        put :update, {:id => company_category_return_policy.to_param, :company_category_return_policy => {}}, valid_session
        assigns(:company_category_return_policy).should eq(company_category_return_policy)
      end

      it "re-renders the 'edit' template" do
        company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CompanyCategoryReturnPolicy.any_instance.stub(:save).and_return(false)
        put :update, {:id => company_category_return_policy.to_param, :company_category_return_policy => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested company_category_return_policy" do
      company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
      expect {
        delete :destroy, {:id => company_category_return_policy.to_param}, valid_session
      }.to change(CompanyCategoryReturnPolicy, :count).by(-1)
    end

    it "redirects to the company_category_return_policies list" do
      company_category_return_policy = CompanyCategoryReturnPolicy.create! valid_attributes
      delete :destroy, {:id => company_category_return_policy.to_param}, valid_session
      response.should redirect_to(company_category_return_policies_url)
    end
  end

end
