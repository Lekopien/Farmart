Rails.application.config.middleware.insert_before 0, Rack::Cors do
<<<<<<< HEAD
    allow do
      origins 'http://localhost:4000'

      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
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
>>>>>>> e934df86328e63df2a731d21326d8a11579ab230
