class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @page = Page.find_by(page_order: 1)
    @contents = @page.contents.order(content_order: :asc)
  end
end
