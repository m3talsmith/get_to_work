class PersonsController < ApplicationController
  before_filter :authenticate_person!, :except => [:new, :create]
  
  def register
    @person = Person.new
  end
  
  def create
    @person = Person.new(params[:person])
    if @person.save
      flash[:notice] = "#{@person.login} was saved"
      sign_in_and_redirect(:person, @person) # This comes from Divines SessionsController#create
    else
      flash[:error] = "We were unable to save #{@person.login}"
      render :action => "register", :template => "persons/new"
    end
  end
  
  def dashboard
    @person = Person.find(current_person.id)
  end
end
