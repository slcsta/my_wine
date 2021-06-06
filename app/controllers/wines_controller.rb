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
    end

    post "/wines" do
        #create new wines
        @movie = Wine.new(producer_name: params[:procuder_name])
        @movie.save
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