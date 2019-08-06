class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    serialized_users = @users.map do |u|
      UserSerializer.new(u)
    end
    render json: serialized_users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render ({
        json: {
          user: UserSerializer.new(@user, user_serializer_options),
          jwt: @token
        },
        status: :created
      })
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def profile

    render ({
      json: {
        user: UserSerializer.new(@user, user_serializer_options)
      },
      status: :accepted
    })
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email, :default_location)
  end

  def user_serializer_options
    return {
      include: [:restaurants, :'restaurants.name', :'restaurants.yelp_id']
    }
  end

end
