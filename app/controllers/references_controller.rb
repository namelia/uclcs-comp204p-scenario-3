class ReferencesController < ApplicationController
  def new
    @reference = Reference.new
  end


  def show
    @reference = Reference.find(params[:id])
  end



  def create
      @reference = Reference.new(reference_params)
      if @reference.save
        # Handle a successful save.
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
