require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "renders newwwwwwwwww" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "GET #create" do
    context "with valid credentials yueesssss" do
      it "redirects to new userrrrr tooooooooo" do
        post :create, params: {user: {username: "princess_v", password: "password"}}
        expect(response).to redirect_to(new_user_url)
      end
    end
    context "with invalid credentials noooooooooo :(" do
      it "renders new template i guess" do
        post :create, params: {user: {username: "princess_v", password: ""}}
        expect(response).to render_template("new")
        expect(flash[:errors]).not_to be_nil
      end
    end
  end

end
