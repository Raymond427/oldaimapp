class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show #for filtering entries
  end

  def new
    @members = Member.new
  end

  def create
    @members = Member.new(members_params) #the new News entry is recreated through the strong params method
      if @members.save #if the entry saves
        redirect_to(:action => 'index') #show all of the present entries
        #flash[:notice] => "Your news entry was saved!"
      else
        render(:action => 'new') #redisplay the create an entry page
        #flash[:notice] => "There was an error, fill out the form carefully and try again"
      end
  end

  def edit
    @members = Member.find(params[:id])
  end

  def update
    @members = Member.find(params[:id])
      if @members.update_attributes(members_params)
        redirect_to(:action => 'index')
        #flash[:notice] => "News post was edited"
      else
        redirect_to(:action => 'index')
      end
  end

  def delete
    @members = Member.find(params[:id])
  end
  
  def destroy
    Member.find(params[:id]).destroy
    redirect_to(:action => 'index')
    #flash[:notice] => "The news post was erased"
  end

  def executives
    @members = Member.where(:is_executive == true).all
  end

  private
    def members_params
      params.require(:member).permit(:first_name, :last_name, :thumb_url, :linkedin_url, :major, :email, :graduation_date, :is_executive, :executive_position)
    end
end
