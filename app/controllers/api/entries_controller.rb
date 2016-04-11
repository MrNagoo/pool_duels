module Api
  class EntriesController < ApplicationController
    def update
      entry = Entry.find(params[:id])
      if entry.update_attributes(team_id: params[:team_id])
        head :ok
      else
        head :bad_request
      end
    end
  end
end
