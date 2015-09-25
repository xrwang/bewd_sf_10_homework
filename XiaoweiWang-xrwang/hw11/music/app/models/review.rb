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

class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
end
