class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :login]

    def index
        users = User.all
        render json: users
    end

    def create
        @user = User.create(create_params)
        if @user.valid?
            token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end
    
    def login
        @user = User.find_by(username: login_params[:username])
        if @user && @user.authenticate(login_params[:password])
            token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
            render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
    end
    
    private
    
    def create_params
        params.permit(:username, :password)
    end
    
    def login_params
        params.permit(:username, :password)
    end

end

