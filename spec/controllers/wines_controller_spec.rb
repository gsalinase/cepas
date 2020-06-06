require 'rails_helper'

RSpec.describe WinesController, type: :controller do 
  describe "GET index" do
    # Asegurar que la vista index está mostrando vinos 
    it "assigns @wines" do
      user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
      sign_in user
      wine = Wine.create(name: 'Casa de Adobe')
      get :index
      expect(assigns(:wines)).to eq([wine])
      sign_out user
    end

    # La vista index y show renderizan el template correcto
    it "renders the index template" do
      user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
      sign_in user
      get :index
      expect(response).to render_template("index")
      sign_out user
    end

    it "renders the show template" do
      user = User.create(email: 'test@test.com', password: "password", password_confirmation: "password")
      wine = Wine.create(name: 'Santa Helena')
      sign_in user
      get :show, params: { id: wine.id }
      expect(response).to render_template(:show)
      sign_out user
    end
  end
end