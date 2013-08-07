module Spree
  class CountriesController < BaseController
    #ssl_allowed :index
    ssl_required :index

    respond_to :js

    def index
      respond_with @states_required = Spree::Country.states_required_by_country_id.to_json, :layout => nil
    end
  end
end

