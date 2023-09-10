class UsersController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  
    skip_before_action :authorized, only: :create
  
    def create
      user = User.create!(user_params)
      session[:user_id] = user.id 
      render json: user, status: :created
    end
  
   
    def login
      user = User.find_by(email: params[:email])
  
      if user&.authenticate(params[:password])
        session[:user_id] = user.id 
        render json: user, status: :ok
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    private
  
    def render_unprocessable_entity(invalid)
      render json: { error: invalid.record.errors }, status: :unprocessable_entity
    end
  
    def user_params
      params.require(:user).permit(:name, :email, :age, :password)
    end
  end