class WinesController < ApplicationController

    get "/wines" do
        @wines = Wine.all #see all of the wines
        erb :'wines/index'
    end

    get "/wines/new" do 
        redirect_if_not_logged_in
        #form for creating a new wine
        erb :'wines/new'
    end 

    get "/wines/:id" do
        @wine = Wine.find(params[:id])
        erb :'wines/show'
    end

    get "/wines/:id/edit" do 
        redirect_if_not_logged_in
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        erb :'wines/edit'
    end

    post "/wines" do
        redirect_if_not_logged_in
        @wine = Wine.new(params)
        @wine.user_id = session[:user_id]
        @wine.save
        redirect :"wines/#{@wine.id}"
    end

    patch "/wines/:id" do
        redirect_if_not_logged_in
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        @wine.update(params["wine"])
        redirect :"wines/#{@wine.id}" 
    end

    delete "/wines/:id" do
        redirect_if_not_logged_in
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        @wine.destroy
        redirect :'/wines'
    end

private
    def redirect_if_not_authorized
        if @wine.user != current_user
            redirect '/wines'
        end
    end
end

