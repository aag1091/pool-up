require 'spec_helper'

describe User do

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:mobile) }
  it { should validate_presence_of(:full_name) }
  it { should validate_uniqueness_of(:mobile) }

  it { should have_many(:user_roles) }
  it { should have_many(:roles).through(:user_roles) }
  it { should have_many(:journeys) }
  it { should have_many(:driver_journeys) }
  it { should have_many(:passenger_journeys) }

end
