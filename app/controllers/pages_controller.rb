class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :funaiprivacy]

  def home
  end

  def dashboard
  end

  def funaiwiki
  end

  def funaiprivacy
  end
end
