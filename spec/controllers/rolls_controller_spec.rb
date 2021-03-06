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

describe RollsController do

  # This should return the minimal set of attributes required to create a valid
  # Roll. As you add validations to Roll, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "lesson_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RollsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all rolls as @rolls" do
      roll = Roll.create! valid_attributes
      get :index, {}, valid_session
      assigns(:rolls).should eq([roll])
    end
  end

  describe "GET show" do
    it "assigns the requested roll as @roll" do
      roll = Roll.create! valid_attributes
      get :show, {:id => roll.to_param}, valid_session
      assigns(:roll).should eq(roll)
    end
  end

  describe "GET new" do
    it "assigns a new roll as @roll" do
      get :new, {}, valid_session
      assigns(:roll).should be_a_new(Roll)
    end
  end

  describe "GET edit" do
    it "assigns the requested roll as @roll" do
      roll = Roll.create! valid_attributes
      get :edit, {:id => roll.to_param}, valid_session
      assigns(:roll).should eq(roll)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Roll" do
        expect {
          post :create, {:roll => valid_attributes}, valid_session
        }.to change(Roll, :count).by(1)
      end

      it "assigns a newly created roll as @roll" do
        post :create, {:roll => valid_attributes}, valid_session
        assigns(:roll).should be_a(Roll)
        assigns(:roll).should be_persisted
      end

      it "redirects to the created roll" do
        post :create, {:roll => valid_attributes}, valid_session
        response.should redirect_to(Roll.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved roll as @roll" do
        # Trigger the behavior that occurs when invalid params are submitted
        Roll.any_instance.stub(:save).and_return(false)
        post :create, {:roll => { "lesson_id" => "invalid value" }}, valid_session
        assigns(:roll).should be_a_new(Roll)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Roll.any_instance.stub(:save).and_return(false)
        post :create, {:roll => { "lesson_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested roll" do
        roll = Roll.create! valid_attributes
        # Assuming there are no other rolls in the database, this
        # specifies that the Roll created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Roll.any_instance.should_receive(:update).with({ "lesson_id" => "1" })
        put :update, {:id => roll.to_param, :roll => { "lesson_id" => "1" }}, valid_session
      end

      it "assigns the requested roll as @roll" do
        roll = Roll.create! valid_attributes
        put :update, {:id => roll.to_param, :roll => valid_attributes}, valid_session
        assigns(:roll).should eq(roll)
      end

      it "redirects to the roll" do
        roll = Roll.create! valid_attributes
        put :update, {:id => roll.to_param, :roll => valid_attributes}, valid_session
        response.should redirect_to(roll)
      end
    end

    describe "with invalid params" do
      it "assigns the roll as @roll" do
        roll = Roll.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Roll.any_instance.stub(:save).and_return(false)
        put :update, {:id => roll.to_param, :roll => { "lesson_id" => "invalid value" }}, valid_session
        assigns(:roll).should eq(roll)
      end

      it "re-renders the 'edit' template" do
        roll = Roll.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Roll.any_instance.stub(:save).and_return(false)
        put :update, {:id => roll.to_param, :roll => { "lesson_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested roll" do
      roll = Roll.create! valid_attributes
      expect {
        delete :destroy, {:id => roll.to_param}, valid_session
      }.to change(Roll, :count).by(-1)
    end

    it "redirects to the rolls list" do
      roll = Roll.create! valid_attributes
      delete :destroy, {:id => roll.to_param}, valid_session
      response.should redirect_to(rolls_url)
    end
  end

end
