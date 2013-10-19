require 'spec_helper'

describe Vehicle do

  it { should validate_presence_of(:drive_type) }
  it { should validate_presence_of(:capacity) }
  it { should validate_presence_of(:plate_no) }
  it { should validate_presence_of(:model) }
  it { should validate_presence_of(:user_id) }

end
