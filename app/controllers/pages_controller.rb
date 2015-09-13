class PagesController < ApplicationController
  respond_to :html, only: [:index, :help, :privacy]
  respond_to :xml,  only: [:browserconfig]
  respond_to :json, only: [:manifest]
  respond_to :text, only: [:robots]

  def index
    respond_with(nil)
  end

  def help
    respond_with(nil)
  end

  def privacy
    respond_with(nil)
  end

  def browserconfig
    respond_with(nil)
  end

  def manifest
    respond_with(nil)
  end

  def robots
    respond_with(nil)
  end
end
