class LikesController < ApplicationController
    before_action :set_like

    def index
        @likes = Like.all
        json_response(@likes)
    end

    def show
        json_response(@likes)
    end

    def update
        @like.update(like_params)
        head :no_content
    end

    private

    def like_params
        params.permit(:like, :done)
    end

    def set_like
        @like = Like.find(params[:like_id])
    end
end
