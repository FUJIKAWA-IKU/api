class UsersController < ApplicationController
  def index
    users = User.all
    render json: { 
      status: 'SUCCESS',
      data: users 
    }
  end

end
