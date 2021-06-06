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
        erb :'wines/show_wine'
    end

    get "/wines/:id/edit" do 
        #editing a specific wine
        @wine = Wine.find(params[:id])
        erb :'wines/edit_wine'
    end

    post "/wines" do
        #create new wines
        wine = Wine.new(params)
        wines = Wine.all
        wine.save
        # go to show or index after create a wine
        # use a redirect here - super duper important
        redirect :'/wines'
    end


    patch "/wines/:id" do
        #editing a specific wine
        @wine = Wine.find(params[:id])
    end

    delete "/wines/:id" do
        #deleting an individual wine
        @wine = Wine.find(params[:id])
    end
end