class ApplicationController < ActionController::Base
     protect_from_forgery with: :null_session
    def encode_token(payload)
        JWT.encode(payload, "secret")
    end

    def decode_token
        auth = request.headers["Authorization"]
        if auth
            token = auth.split(' ')[1]
            begin
                JWT.decode(token, 'secret', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def authorized_farmer
        decoded_token = decode_token()
        if decode_token
            farmer_id = decoded_token[0][farmer_id]
            @farmer = Farmer.find_by(id: farmer_id)
        end
    end

    def authorized_user
        decoded_token = decode_token()
        if decode_token
            user_id = decoded_token[0][user_id]
            @user = User.find_by(id: user_id)
        end
    end

    def authorize_farmer
        render json: { message: "please login"}, status: :unauthorized unless
        authorized_farmer
    end

    def authorize_user
        render json: { message: "please login"}, status: :unauthorized unless
        authorized_user
    end

end
