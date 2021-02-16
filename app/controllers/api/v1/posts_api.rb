class Api::V1::PostsAPI < Api::V1::BaseAPI
    resource :posts do
      params do
        optional :term, :type => String
      end

      get '/' do
        posts = ::Post.all
        
        present :posts, posts, :with => ::Api::V1::PostEntity
      end

      params do
        optional :term, :type => String
      end

      get '/' do
        post = ::Post.create
    
        present :post, post, :with => ::Api::V1::PostEntity
      end

      
    end
end