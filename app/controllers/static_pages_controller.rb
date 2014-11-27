class StaticPagesController < ApplicationController
  def home
  end

  def search
  end

  def status
    render 'results'
  end

  def results
  end
end