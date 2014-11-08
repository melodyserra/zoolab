class AnimalsController < ApplicationController

	def index
		@animals = Animal.all
		render :index
	end

	def new
		@animal = Animal.new
		render "new"
	end

	def destroy
		render "animals"
	end

	def show
		id = params[:id]
		@animals = Animal.find(id)
		render :show
	end

	def create
      animal = params.require(:animal).permit(:name, :photo, :zoo_id)
      Animal.create(animal)
      redirect_to "/animals"
    end

    def edit
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.require(:animal).permit(:name, :photo, :zoo_id)
    end

    def update
      id = params[:id]
      @animals = Animal.find(id)
      respond_to do |format|
        if @animals.update(animal_params)
        format.html { redirect_to @animals, notice: 'Animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @animals }
        else
        format.html { render :edit }
        format.json { render json: @animals.errors, status: :unprocessable_entity }
      end
    end
  end

  	def destroy
  		id = params[:id]
  		@animals = Animal.find(id)
    	@animals.destroy
    	respond_to do |format|
      		format.html { redirect_to animals_url, notice: 'Animal was successfully destroyed.' }
      		format.json { head :no_content }
    end
  end

end