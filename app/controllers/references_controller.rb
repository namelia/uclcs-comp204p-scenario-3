class ReferencesController < ApplicationController
  before_action :authenticate_user!

 def index
    @references = Reference.all
  end


  def new
    @reference = Reference.new
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def edit
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to @reference
    else
      render 'edit'
    end
  end

  def create
      @reference = Reference.new(reference_params)
      if @reference.save
        redirect_to @reference, notice: "Successfully added reference!"
      else
        render 'new'
      end
    end

   def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy

    redirect_to references_path
  end

    private

      def reference_params
        params.require(:reference).permit(:number, :title, :kind,
                                     :author, :pubdate, :userid, :notes)


      end


end
