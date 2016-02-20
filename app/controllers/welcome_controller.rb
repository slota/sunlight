class WelcomeController < ApplicationController
  def index
  end

  def new
    @legislators = Legislator.all
  end
end
