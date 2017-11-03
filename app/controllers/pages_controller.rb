class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:index] 
  def index
  end

  def new_fone
  end
end
