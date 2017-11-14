require 'rails_helper'

describe Day do
  it { should validate_presence_of :name }
  it { should belongs_to :week }
end
