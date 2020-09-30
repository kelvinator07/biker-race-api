require 'rails_helper'

RSpec.describe Rider, type: :model do

  describe 'validations' do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:position) }
  end

  subject {
    described_class.new(firstname: "Kelvin",
                        lastname: "Obukome",
                        city: "Lekki",
                        state: "Lagos",
                        position: [44.3, 34.12])
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

  it "is not valid without a city" do
    subject.city = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a state" do
    subject.state = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a position" do
    subject.position = nil
    expect(subject).to_not be_valid
  end

end