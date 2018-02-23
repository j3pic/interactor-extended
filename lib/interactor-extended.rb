require 'interactor'

module Interactor
  module ClassMethods
    self.instance_methods.each do |method_name|
      if method_name.to_s =~ /^call/
        alias_name = (method_name.to_s).sub(/^call/, 'perform')
        alias_method method_name.to_sym, method_name
      end
    end

    def run
      setup
      perform
    end

    def success?
      context.success?
    end

    def failure?
      context.failure?
    end

    def fail!(*args)
      context.fail!(*args)
    end

    def method_missing(method, *)
      context.fetch(method) { context.fetch(method.to_s) { super } }
    end

    def respond_to_missing?(method, *)
      (context && (context.key?(method) || context.key?(method.to_s))) || super
    end
  end

end
