class ZoosController < ApplicationController

	def index
		@zoos = Zoo.all
		render :index
	end

	def new
		@zoo = Zoo.new
		render "new"
	end

	def destroy
		render "zoos"
	end

	def show
		id = params[:id]
		@zoos = Zoo.find(id)
		render :show
	end

	def create
      zoo = params.require(:zoo).permit(:name, :location)
      Zoo.create(zoo)
      redirect_to "/zoos"
    end

    def edit
    	@zoo = Zoo.find(params[:id])
    end

    def zoo_params
    	params.require(:zoo).permit(:name, :location)
    end

    def update
    	id = params[:id]
    	@zoos = Zoo.find(id)
	    respond_to do |format|
	      if @zoos.update(zoo_params)
	        format.html { redirect_to @zoos, notice: 'Zoo was successfully updated.' }
	        format.json { render :show, status: :ok, location: @zoos }
	      else
	        format.html { render :edit }
	        format.json { render json: @zoos.errors, status: :unprocessable_entity }
	      end
	    end
	  end

  	def destroy
  		id = params[:id]
		@zoos = Zoo.find(id)
	    @zoos.destroy
	    respond_to do |format|
	      format.html { redirect_to zoos_url, notice: 'Zoo was successfully deleted.' }
	      format.json { head :no_content }
	    end
	  end


end

