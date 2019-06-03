class PagesController < ApplicationController
  before_action :authenticate_user!
  def show
    @page = Page.first
  end
end
