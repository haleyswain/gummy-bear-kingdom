require 'rails_helper'

describe Bear do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
  it { should validate_presence_of :color }
  it { should validate_presence_of :hobby }
end
