# frozen_string_literal: true

# handles returning data to front end
module Response
  extend ActiveSupport::Concern

  included do
    def paginate(model)
      model.limit(params[:limit]).offset(params[:offset])
    end
  end
end
