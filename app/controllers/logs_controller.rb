class LogsController < ApplicationController
  def index
    @logs = Log.limit(10).order('updated_at DESC')
  end
end
