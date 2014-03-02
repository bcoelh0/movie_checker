require "spec_helper"

describe User do
  subject { User.create!(:email => "rand@email.com") }
  it { should validate_presence_of :email }
end
