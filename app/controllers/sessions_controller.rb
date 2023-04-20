class SessionsController < ApplicationController

  def logout
      redis = Redis.new
      token = request.headers["Authorization"].split(" ")[1]
      redis.set(token, true, ex: 3000)
      render json: { message: "Logged out successfully" }, status: :ok
  end

end