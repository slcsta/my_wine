class UsersController < ApplicationController

    get '/sign_up' do
        erb :'users/sign_up'
    end

end