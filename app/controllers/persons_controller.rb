class PersonsController < ApplicationController
  def register
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person])
    if @person.save
      flash[:notice] = "#{@person.login} was saved"
      redirect_to dashboard_person_path(@person.id)
    else
      flash[:error] = "We were unable to save #{@person.login}"
      render :action => "register", :template => "persons/new"
    end
  end
  
  def dashboard
    @person = Person.find(params[:id])
  end
end
