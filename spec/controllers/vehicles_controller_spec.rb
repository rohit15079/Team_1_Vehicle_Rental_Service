require 'rails_helper'

RSpec.describe VehiclesController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all vehicles as @vehicles" do
      student = Vehicle.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:vehicles)).to eq([vehicle])
    end
  end

  describe "GET show" do
    it "assigns the requested vehicle as @vehicle" do
      student = Vehicle.create! valid_attributes
      get :show, {:id => vehicle.to_param}, valid_session
      expect(assigns(:vehicle)).to eq(vehicle)
    end
  end

  describe "GET new" do
    it "assigns a new vehicle as @vehicle" do
      get :new, {}, valid_session
      expect(assigns(:vehicle)).to be_a_new(Vehicle)
    end
  end

  describe "GET edit" do
    it "assigns the requested vehicle as @vehicle" do
      student = Vehicle.create! valid_attributes
      get :edit, {:id => vehicle.to_param}, valid_session
      expect(assigns(:vehicle)).to eq(vehicle)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Vehicle" do
        expect {
          post :create, {:vehicle => valid_attributes}, valid_session
        }.to change(Vehicle, :count).by(1)
      end

      it "assigns a newly created vehicle as @vehicle" do
        post :create, {:vehicle => valid_attributes}, valid_session
        expect(assigns(:vehicle)).to be_a(Vehicle)
        expect(assigns(:vehicle)).to be_persisted
      end


      it "redirects to the created vehicle" do
        post :create, {:vehicle => valid_attributes}, valid_session
        expect(response).to redirect_to(Vehicle.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vehicle as @vehicle" do
        post :create, {:vehicle => invalid_attributes}, valid_session
        expect(assigns(:vehicle)).to be_a_new(Vehicle)
      end

      it "re-renders the 'new' template" do
        post :create, {:vehicle => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested vehicle" do
        vehicle = Vehicle.create! valid_attributes
        put :update, {:id => vehicle.to_param, :vehicle => new_attributes}, valid_session
        vehicle.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested vehicle as @vehicle" do
        vehicle = Vehicle.create! valid_attributes
        put :update, {:id => vehicle.to_param, :vehicle => valid_attributes}, valid_session
        expect(assigns(:vehicle)).to eq(vehicle)
      end

      it "redirects to the vehicle" do
        vehicle = Vehicle.create! valid_attributes
        put :update, {:id => vehicle.to_param, :vehicle => valid_attributes}, valid_session
        expect(response).to redirect_to(vehicle)
      end
    end

    describe "with invalid params" do
      it "assigns the vehicle as @vehicle" do
        vehicle = Vehicle.create! valid_attributes
        put :update, {:id => vehicle.to_param, :vehicle => invalid_attributes}, valid_session
        expect(assigns(:vehicle)).to eq(vehicle)
      end

      it "re-renders the 'edit' template" do
        vehicle = Vehicle.create! valid_attributes
        put :update, {:id => vehicle.to_param, :vehicle => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vehicle" do
      vehicle = Vehicle.create! valid_attributes
      expect {
        delete :destroy, {:id => vehicle.to_param}, valid_session
      }.to change(Vehicle, :count).by(-1)
    end

    it "redirects to the vehicle list" do
      vehicle = Vehicle.create! valid_attributes
      delete :destroy, {:id => vehicle.to_param}, valid_session
      expect(response).to redirect_to(vehicle_url)
    end
  end


end
