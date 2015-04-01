require 'spec_helper'

describe Hotel do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :image_url }
  it { should validate_presence_of :latitude }
  it { should validate_presence_of :longitude }
  it { should validate_presence_of :city_id }

  it { should belong_to :city }
end
