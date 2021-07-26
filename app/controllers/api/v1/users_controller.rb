class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        sorted_users = users.sort_by {|user| user.name}
        render json: UserSerializer.new(sorted_users)
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: UserSerializer.new(user), status: :accepted
          else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
