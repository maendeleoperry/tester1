class PracticeController < ApplicationController
    def index
      @about = About.order("RANDOM()").first
    end
    
    def about
      @about = About.order("RANDOM()").first
    end  

    def new
       @about = About.new
    end

    def create
       About.create(about_params)
       redirect_to root_path
    end
    
    private

    def about_params
      params.require(:about).permit(:name, :title)
    end   
  

end
