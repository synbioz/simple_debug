module SimpleDebug
  extend ActiveSupport::Concern

  module ClassMethods
    def simple_debugger
      klass = self
      klass.instance_methods(false).each do |m|
        debug_name    = "__#{m}"
        original_name = "#{m}_original"

        define_method debug_name do
          caller = caller_locations.first
          Rails.logger.debug "[DEBUG] #{m} called from #{caller.label} " \
                             "at line #{caller.lineno}."
          send original_name
        end

        # name_original -> name
        klass.send :alias_method, original_name.to_sym, m
        # name -> __name
        klass.send :alias_method, m, debug_name.to_sym
      end
    end
  end
end

ActiveRecord::Base.send :include, SimpleDebug
