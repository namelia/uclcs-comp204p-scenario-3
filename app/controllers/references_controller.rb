class ReferencesController < ApplicationController
  before_action :authenticate_user!

  def new
    @reference = Reference.new
  end


  def index
    @references = Reference.all
  end


  def show
    @reference = Reference.find(params[:id])
  end



  def create
      @reference = Reference.new(reference_params)
      if @reference.save
        redirect_to @reference
      else
        render 'new'
      end
    end

    private

      def reference_params
        params.require(:reference).permit(:number, :title, :kind,
                                     :author, :pubdate, :userid)


      end


end
