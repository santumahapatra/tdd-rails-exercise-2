class SearchManager
  attr_reader :params, :search_thread, :results, :session_id

  def initialize(params, id)
    @params = params
    @session_id = id
  end

  def right_thread_for_session?(id)
    @session_id == id
  end

  def initiate_search
    @search_thread = Thread.new{ search_database_and_sleep }
  end

  def search_database_and_sleep
    sleep(4)
    @results = Tickets.where(:from => [@params["from"]])
  end

  def end_thread
    @search_thread.join
  end

  def thread_alive?
    @search_thread.alive?
  end
end