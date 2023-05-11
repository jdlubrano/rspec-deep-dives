# frozen_string_literal: true

require_relative "matchers/alter_matchers"

RSpec.describe "Making our own change matcher" do
  include AlterMatchers

  describe "Array <<" do
    let(:array) { [] }

    it "changes the Array's size" do
      expect do
        array << 1
      end.to change(array, :size)
    end

    it "alters the Array's size" do
      expect do
        array << 1
      end.to alter(array, :size)
    end
  end
end
