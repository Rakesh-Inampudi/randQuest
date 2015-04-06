class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  def index
    @quests = Quest.all
    respond_with(@quests)
  end

	def mathsques	
	  if (!@count)
	  @count = 0
	  end
	  t=QuesLevel.new
	  @level= t.getlevel(@count.to_i)
	  if (!@level)
	   @level=0
	  end 
	  @a=t.geta(@level.to_i)
	  @b=t.getb(@level.to_i)
	  temp=Mathsques.new 	
	  @questi= temp.generateQuestion(@a,@b) 
	  @ans= temp.getans()
	end

def mathsans
@input1 = params[:search_string]
@ans = params[:answer_string]
@count = params[:count_string]
@level = params[:level_string]
if (@input1== @ans)
	@count = @count.to_i + 1 	
	@result= "Correct"
	else 
	@result= "Wrong"
	end
mathsques()
end
  

def show
    respond_with(@quest)
  end

  def new
    @quest = Quest.new
    respond_with(@quest)
  end

  def edit
  end

  def create
    @quest = Quest.new(quest_params)
    @quest.save
    respond_with(@quest)
  end

  def update
    @quest.update(quest_params)
    respond_with(@quest)
  end

  def destroy
    @quest.destroy
    respond_with(@quest)
  end

  private
    def set_quest
      @quest = Quest.find(params[:id])
    end

    def quest_params
      params.require(:quest).permit(:question, :answer)
    end
end
