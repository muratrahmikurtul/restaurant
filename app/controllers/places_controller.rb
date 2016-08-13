class PlacesController < ApplicationController
	before_action :set_place, only: [:show, :update, :edit, :destroy]
	def  index
		@places = Place.all
	end

	def new
		@place = Place.new
		load_categories
	end

	def show

	end
	def create
		@place = Place.new(place_params)

		if @place.save

			redirect_to place_path(@place)
		else
			load_categories
			render :new
		end
	end
	def edit
		load_categories
	end

	def update


		if @place.update(place_params)
			redirect_to place_path(@place)
		else
			load_categories
			render :edit
		end
	end

	def destroy

		@place.destroy
		redirect_to places_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :adress, :established_at, :phone_number, :contact_mail, :city, :category_id)
	end

	def set_place
		@place = Place.find(params[:id])
	end

	def load_categories
		@categories = Category.all.collect {|c| [c.name,c.id]}
	end
end
