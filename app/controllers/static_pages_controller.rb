class StaticPagesController < ApplicationController
  def home
  end

  def search
    search_object = SearchManager.new(params, session[:id])
    search_object.initiate_search
  end

  def status
    search_object = get_search_object(session[:id])
    if search_object.thread_alive?
      render 'search'
    else
      redirect_to results_path
    end
  end

  def results
    search_object = get_search_object(session[:id])
    @ticket_results = search_object.results
    search_object.end_thread
  end

  private
    def get_search_object(session_id)
      ObjectSpace.each_object(SearchManager).detect { |klass| klass.right_thread_for_session?(session_id) }
    end
end