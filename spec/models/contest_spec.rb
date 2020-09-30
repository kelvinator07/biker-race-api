require 'rails_helper'

RSpec.describe Contest, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:slogan) }
  end

  subject {
    described_class.new(firstname: "Kelvin",
                        lastname: "Obukome",
                        email: "Kelvinator4leo@gmail.com",
                        slogan: "My New Slogan")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a firstname" do
    subject.firstname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a lastname" do
    subject.lastname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a slogan" do
    subject.slogan = nil
    expect(subject).to_not be_valid
  end

end