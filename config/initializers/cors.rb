Rails.application.config.middleware.insert_before 0, Rack::Cors do
<<<<<<< HEAD
    allow do
      origins 'http://localhost:4000'
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
  
    end
end
=======
  allow do
    origins 'http://localhost:4000'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]

  end
end
>>>>>>> 9cbf467c24f92f115f6ab6169305c09bfe788f30
