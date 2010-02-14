class PagesController < ApplicationController
  def index
    redirect_to dashboard_person_path(current_person) and return if current_person
  end
end
