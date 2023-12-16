class GarbagesController < ApplicationController

    def index
        if params[:search] == nil
          @garbages= Garbage.all
        elsif params[:search] == ''
          @garbages= Garbage.all
        else
          @garbages = Garbage.where("body LIKE ? ",'%' + params[:search] + '%')
        end

     if params[:tag_ids]
        @garbages = []
       params[:tag_ids].each do |key, value|
         if value == "1"
          tag_garbages = Tag.find_by(name: key).garbages
          @garbages = @garbages.empty? ? tag_garbages : @garbages & tag_garbages
         end
       end
     end
    
     if params[:tag]
        Tag.create(name: params[:tag])
     end
    end
  
      def new
        @garbage = Garbage.new
      end
    
      def link
      end
    
      def create
        garbage = Garbage.new(garbage_params)
        if garbage.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      def show
        @garbage = Garbage.find(params[:id])
      end
    
      def edit
        @garbage = Garbage.find(params[:id])
      end
    
      def update
        garbage = Garbage.find(params[:id])
        if garbage.update(garbage_params)
          redirect_to :action => "show", :id => garbage.id
        else
          redirect_to :action => "new"
        end
      end
    
      def destroy
        garbage = Garbage.find(params[:id])
        garbage.destroy
        redirect_to action: :index
      end
    
      private
      def garbage_params
        params.require(:garbage).permit(:body,:image,:overall,tag_ids:[])
      end

end
