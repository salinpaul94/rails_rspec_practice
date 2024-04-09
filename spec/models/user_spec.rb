require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to_not allow_value('foo@').for(:email)}
    it { is_expected.to_not allow_value('@bar.com').for(:email)}
  end

  it 'has a valid factory' do
    expect(user).to be_valid 
    # expect(user.valid?).to eq(true)
    # expect('').to be_empty
    # expect({a: 1}).to be_a(Hash)
  end
end
