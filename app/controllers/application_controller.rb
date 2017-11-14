class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_search_categories

  protected

  def load_search_categories
    # we save the results in a session so that the query only runs once
    # instead of on every page. It will still update the search categories
    # session variable whenever the user starts a new session, or when
    # the current session times out. (default timeout is 30 min)
    unless session[:search_categories].present?
      session[:search_categories] =
        Category.order(:name).map { |c| [c.name, c.id] }
    end
  end
end
