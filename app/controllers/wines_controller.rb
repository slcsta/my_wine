class WinesController < ApplicationController

    get "/wines" do
        @wines = Wine.all #see all of the wines
        erb :index
    end

    get "/wines/:id" do
        #to see an invidual wine
    end

    get "/wines/new" do 
        #form for creating a new wine
    end

    get "/wines/:id/edit" do 
        #editing a specific wine
    end

    post "/wines" do
        #create new wines
    end

    patch "/wines/:id" do
        #editing a specific wine
    end

    delete "/wines/:id" do
        #deleting an individual wine
    end
end