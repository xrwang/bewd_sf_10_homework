# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  length     :string
#  genre      :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true,
                   length: { minimum: 5 }
  has_many :reviews, as: :reviewable, dependent: :destroy

end
