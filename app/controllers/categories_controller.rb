class CategoriesController < ApplicationController
	def index
    	@categories = Category.all
  end

  	def new
		@category = Category.new
  	end

  	def edit 
  		@category = Category.find(params[:id]) 
	end

def create
    	@category = Category.new(category_params)

    	respond_to do |format|
	      if @category.save
	        format.html { redirect_to @category, notice: 'Category was successfully created.' }
	        format.json { render :show, status: :created, location: @category }
	      else
	        format.html { render :new }
	        format.json { render json: @category.errors, status: :unprocessable_entity }
	      end
    	end
  end

	def update 
	  @category = Category.find(params[:id]) 
	  if @category.update_attributes(category_params) 
	    redirect_to(:action => 'show', :id => @category.id) 
	  else 
	    render 'edit' 
	  end 
end

    def show 
	 	@category = Category.find(params[:id]) 
	 	@books = @category.books 
end

	def destroy
	category = Category.find(params[:id])
    category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  	def category_params 
	    params.require(:category).permit(:titre, :description) 
	  end

end
