require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
	test 'create Community with valid name' do
		community = Community.new name: 'Good'
		assert community.valid?, 'Community should be Okay'

		community = Community.new name: 'ALongNameGood'
		assert community.valid?, 'Community should be Okay'
	end

	test 'Community name should fail is too small' do
		community = Community.new name:'bad'
		assert community.invalid?

		community = Community.new name:'    '
		assert community.invalid?

		community = Community.new name:nil
		assert community.invalid?

		community = Community.new name:1
		assert community.invalid?
	end


end
