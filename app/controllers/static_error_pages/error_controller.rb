module StaticErrorPages
  class ErrorController < StaticErrorPages::ApplicationController

    if defined?(Devise)
      skip_before_action :authenticate_user!
    end

    def show
      render action: find_action
    end

    private

    def find_action
      error_code = params[:code].to_s.presence_in StaticErrorPages.supported_errors
      error_code || "404"
    end
  end
end
