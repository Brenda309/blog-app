class PostController < ApplicationController
       def list
        @post = Post.all
    end

    def show
          @post = Post.find(params[:id])
    end
   end
end
