class SessionsController < ApplicationController

  def logout
      redis = Redis.new
      token = request.headers["Authorization"].split(" ")[1]
      redis.set(token, true, ex: 3000)
      render json: { message: "Logged out successfully" }, status: :ok
<<<<<<< HEAD
  end
=======
    end
>>>>>>> 9cbf467c24f92f115f6ab6169305c09bfe788f30

end