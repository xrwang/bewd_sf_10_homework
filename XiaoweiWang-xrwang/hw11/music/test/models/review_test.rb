# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  score           :integer
#  body            :string
#  reviewer_name   :string
#  reviewable_id   :integer
#  reviewable_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
