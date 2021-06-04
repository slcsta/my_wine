class WinesController < ApplicationController

    get "/wines" do
        erb :wines
    end

end