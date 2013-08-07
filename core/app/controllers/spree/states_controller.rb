module Spree
  class StatesController < Spree::StoreController
    #ssl_allowed :index
    ssl_required :index

    respond_to :js

    def index
      # we return ALL known information, since billing country isn't restricted
      # by shipping country
      respond_with @state_info = Spree::State.states_group_by_country_id.to_json, :layout => nil
    end
  end
end
