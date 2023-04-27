class ApplicationController < ActionController::API
<<<<<<< HEAD

=======
    
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
    def get_current_user
        id = decode_token
        User.find_by(id: id)
    end
<<<<<<< HEAD

    def decode_token
        token = get_token
        begin
            data = JWT.decode(token, secret).first
=======
    
    def decode_token 
        token = get_token
        begin 
            data = JWT.decode(token, secret).first 
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
            data['id']
        rescue
            nil
        end
    end

<<<<<<< HEAD
    def get_token
=======
    def get_token 
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
        request.headers['Authorization']
    end

    def issue_token(data)
        JWT.encode(data, secret)
    end

<<<<<<< HEAD
    def secret
        'shhh'
    end

end
=======
    def secret 
        'shhh'
    end 

end
>>>>>>> c5552994eb7105a3e248869868465a17f1c7afd1
