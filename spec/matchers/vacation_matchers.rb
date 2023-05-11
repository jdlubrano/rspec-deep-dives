# frozen_string_literal: true

require "set"

module VacationMatchers
  class HasVacationMatcher

    def matches?(team_member)
      @team_member = team_member

      @team_member != "Kyle"
    end

    def failure_message
      "#{@team_member} does not have any vacation left"
    end

    def failure_message_when_negated
      "#{@team_member} has vacation"
    end

  end

  def have_vacation
    VacationMatchers::HasVacationMatcher.new
  end
end
