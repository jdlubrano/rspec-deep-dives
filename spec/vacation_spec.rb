# frozen_string_literal: true

require_relative "matchers/vacation_matchers"

RSpec.describe "Vacation" do
  include VacationMatchers

  it "most team members have vacation" do
    expect("Ayat").to have_vacation
    expect("Chris").to have_vacation
    expect("Feather").to have_vacation
    expect("Jess").to have_vacation
    expect("Joel").to have_vacation
    expect("Kurt").to have_vacation
    expect("Maryna").to have_vacation
    expect("Ziemek").to have_vacation

    expect("Kyle").to have_vacation
  end

end
