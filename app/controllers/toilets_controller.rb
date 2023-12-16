class ToiletsController < ApplicationController
  
  def index
    if params[:search] == nil
      @toilets= Toilet.all
    elsif params[:search] == ''
      @toilets= Toilet.all
    else
      @toilets = Toilet.where("body LIKE ? ",'%' + params[:search] + '%')
    end

    
    if params[:tag_ids]
      @toilets = []
      params[:tag_ids].each do |key, value|
        if value == "1"
          tag_toilets = Tag.find_by(name: key).toilets
          @toilets = @toilets.empty? ? tag_toilets : @toilets & tag_toilets
        end
      end
    end

    


    if params[:tag]
      Tag.create(name: params[:tag])
    end


  end

 
 



  def new
    @toilet = Toilet.new
  end

  def link
  end

  def create
    toilet = Toilet.new(toilet_params)
    if toilet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @toilet = Toilet.find(params[:id])
  end

  def edit
    @toilet = Toilet.find(params[:id])
  end

  def update
    toilet = Toilet.find(params[:id])
    if toilet.update(toilet_params)
      redirect_to :action => "show", :id => toilet.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    toilet = Toilet.find(params[:id])
    toilet.destroy
    redirect_to action: :index
  end

  private
  def toilet_params
    params.require(:toilet).permit(:body, :content, :title, :overall, :image, tag_ids:[])
  end

  
end




