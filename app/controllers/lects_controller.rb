class LectsController < InheritedResources::Base
   before_action :authenticate_user!
   before_action :set_lect, only: [:show, :edit, :update, :destroy, :like, :dislike]


	def create

		@lect = Lect.new(lect_params)
		@lect.user_id = current_user.id

       respond_to do |format|
	    if @lect.save
	        format.html { redirect_to @lect, notice: 'lecture created.' }
	        format.json { render :show, status: :created, location: @lect }
	      else
	        format.html { render :new }
	        format.json { render json: @lect.errors, status: :unprocessable_entity }

	      end
        end
    
  
    end

    def like
	    @lect = Lect.find(params[:id])
	    @lect.upvote_from current_user
	    redirect_to lect_path
  end
  
   def dislike
	     @lect = Lect.find(params[:id])
	     @lect.downvote_from current_user
	     redirect_to lect_path
  end
  private

  def set_lect
  	@lect = Lect.find(params[:id])
  end

    def lect_params
      params.require(:lect).permit(:title, :content, :attach, :user_id, :course_id)
    end
end

