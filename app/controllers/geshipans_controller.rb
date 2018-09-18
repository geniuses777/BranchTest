class GeshipansController < ApplicationController
    def create_at
        nemo = Geshipan.new
        nemo.title = params[:title]
        nemo.content = params[:content]
        nemo.save
        
        redirect_to '/'
    end
    def index
       @all = Geshipan.all 
    end
    def show
       @special = Geshipan.find params[:id] 
    end
    def update
       @review = Geshipan.find params[:id] 
    end
    def update_at
       semo = Geshipan.find params[:id]
       semo.title = params[:title]
       semo.content = params[:content]
       semo.save
       
       redirect_to "/geshipans/show/#{semo.id}"
    end
    def delete
       remove = Geshipan.find params[:id]
       remove.destroy()
       
       redirect_to '/'
    end
end
