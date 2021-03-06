module Adhoq
  class ApplicationController < Adhoq.config.base_controller.constantize
    layout 'adhoq/application'

    # NOTE support for before Rails5 application
    unless respond_to?(:before_action)
      def self.before_action(*args)
        before_filter(*args)
      end
    end

    include Adhoq::AuthorizationMethods
  end
end
