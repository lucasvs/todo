require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
 describe User do
	before { @user = User.new(name: "Example User", email:"user@example.com", password: "123456", password_confirmation: "123456") }
	
	subject { @user }
	
	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password_digest) }
	it { should respond_to(:password)}
	it { should respond_to(:password_confirmation)}
	it { should respond_to(:remember_token) }
	it { should respond_to(:authenticate) }
	it { should respond_to(:admin) }
	it { should respond_to(:microposts) }
	it { should respond_to(:feed) }
	it { should respond_to(:feed) }
	it { should respond_to(:relationships) }
	it { should respond_to(:followed_users) }
	it { should respond_to(:following?) }
	it { should respond_to(:follow!) }

	it { should be_valid }
end
end
