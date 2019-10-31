class CommentController < ApplicationController


    def new
        Comment.new
    end

    
    def show
        @comment = Comment.where(gossip_id: :gossip_id, id: params[:id])
    end
    

   def create
    puts "=" * 100
    puts params
    ûts "=" * 100
    @comment = Comment.new(content: params[:content])
   end


    def index
        @comments = Comment.where(gossip_id: :gossip_id)
    end
    
    def edit
        @comment = Comment.find(params[:id])
    end
    
    def update
        @comment = Comment.find(params[:id])
        com_params = params.require(:comment).permit(:content)
        @comment.update(com_params)
        redirect_to gossip_path
    end


    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy
    end

      
end
