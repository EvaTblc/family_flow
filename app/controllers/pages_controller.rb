class PagesController < ApplicationController
  def home
    @organization = Organization.find_by(creator: current_user)
  end
end
