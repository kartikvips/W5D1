require 'rails_helper'
# require 'spec_helper'

RSpec.describe User, type: :model do
  subject(:user) {User.new(username: 'prince_k', password: 'valerie')}

  describe 'session_token' do
    it 'assigns session_token if one is not given' do
      # user = User.create(username: 'prince_k', password: 'valerie')
      expect(user.session_token).not_to be_nil
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:session_token) }
    it { should validate_length_of(:password).is_at_least(6) }

    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:password_digest) }
    it { should validate_uniqueness_of(:session_token) }
  end

  describe 'password' do
    it 'is not stored' do
      User.create(username: 'prince_k', password: 'valerie')
      expect(User.find_by(username:'prince_k').password).to be_nil
    end
  end

  describe '#is_password?' do
    it 'checks password when correct' do
      # user = User.create(username: 'prince_k', password: 'valerie')
      expect(user.is_password?('valerie')).to be true
    end
    it 'checks password when incorrect' do
      # user = User.create(username: 'prince_k', password: 'valerie')
      expect(user.is_password?('valeree')).to be false
    end
  end

  # describe '::find_by_credentials' do
  #   it 'should return the user if credentials are correct'
  # end




end
