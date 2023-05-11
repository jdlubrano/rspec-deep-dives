# frozen_string_literal: true

module AlterMatchers

  class Matcher

    def initialize(object_or_block, msg = nil)
      @object_or_block = object_or_block
      @msg = msg
    end

    def matches?(block)
      @before_value = evaluate

      block.call

      @after_value = evaluate

      @before_value != @after_value
    end

    def failure_message
      "#{@object_or_block.class}##{@msg} was not altered"
    end

    def supports_block_expectations?
      true
    end

  private

    def evaluate
      if @msg.nil?
        @object_or_block.call
      else
        @object_or_block.send(@msg)
      end
    end

  end

  def alter(object = nil, msg = nil, &block)
    object_or_block = object || block
    AlterMatchers::Matcher.new(object_or_block, msg)
  end

end
