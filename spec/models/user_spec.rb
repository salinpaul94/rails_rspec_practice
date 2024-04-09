require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'has a valid factory' do
    expect(user).to be_valid 
    # expect(user.valid?).to eq(true)
    # expect('').to be_empty
    # expect({a: 1}).to be_a(Hash)
  end
end
