class WinesController < ApplicationController

    get "/wines" do
        @wines = Wine.all #see all of the wines
        erb :'wines/index'
    end

    get "/wines/new" do 
        #form for creating a new wine
        erb :'wines/new'
    end

    get "/wines/:id" do
        #to see an invidual wine
        @wine = Wine.find(params[:id])
        erb :'wines/show'
    end

    get "/wines/:id/edit" do 
        #editing a specific wine
        @wine = Wine.find(params[:id])
        erb :'wines/edit'
    end

    post "/wines" do
        #create new wines
        wine = Wine.new(params)
        wine.user = current_user # setting that current_user to that wine
        wine.save
        # go to show or index after create a wine
        # use a redirect here - super duper important
        redirect :'/index'
    end


    patch "/wines/:id" do
        #editing a specific wine
        @wine = Wine.find(params[:id])
        # because there are so many attributes here, we want to do a nested hash
        @wine.update(params["wine"])
        redirect :"wines/#{@wine.id}" 
    end

    delete "/wines/:id" do
        #deleting an individual wine
        @wine = Wine.find(params[:id])
        # use destroy - better than delete here
        @movie.destroy
        redirect :'/movies'
    end
end