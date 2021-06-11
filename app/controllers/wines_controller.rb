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
        #to see an invidual wine
        @wine = Wine.find(params[:id])
        erb :'wines/show'
    end

    get "/wines/:id/edit" do 
        redirect_if_not_logged_in
        #editing a specific wine
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        erb :'wines/edit'
    end

    post "/wines" do
        redirect_if_not_logged_in
        #create new wines
        @wine = Wine.new(params)
        @wine.user_id = session[:user_id] # setting that current_user to that wine
        @wine.save
        # go to show or index after create a wine
        redirect :"wines/#{@wine.id}"
    end

    patch "/wines/:id" do
        redirect_if_not_logged_in
        #editing a specific wine
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        # because there are so many attributes here, we want to do a nested hash
        @wine.update(params["wine"])
        redirect :"wines/#{@wine.id}" 
    end

    delete "/wines/:id" do
        redirect_if_not_logged_in
        #deleting an individual wine
        @wine = Wine.find(params[:id])
        redirect_if_not_authorized
        # use destroy - better than delete here
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

