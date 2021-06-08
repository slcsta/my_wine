class UsersController < ApplicationController

    get '/sign_up' do
        erb :'users/sign_up'
    end

    post '/sign_up' do
        u = User.new(params)
        # We need to do:
        # 1. instantiate a user
        # 2. ensure user signed up with valid data
        # 3. if user signed up successfully, then redirect
        # 4. if user didn't sign up properly, then redirect back to the form
    
        #if u.email.blank? || u.password.blank? || User.find_by_email(params["email"])
        if !u.save
            redirect '/sign_up'
        else
            u.save
            binding.pry
            session[:user_id] = u.id
            redirect '/wines' 
        end
    end
end