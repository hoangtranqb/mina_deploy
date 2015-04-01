require 'spec_helper'

describe City do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image_url }

  it { should have_many :hotels }
end
