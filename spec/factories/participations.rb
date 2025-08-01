# frozen_string_literal: true

# == Schema Information
#
# Table name: participations
#
#  id             :string           not null, primary key
#  device_type    :string
#  has_voted      :boolean          default(FALSE)
#  has_written_in :boolean          default(FALSE)
#  voted_at       :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :string           not null
#
# Indexes
#
#  index_participations_on_user_id  (user_id) UNIQUE
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :participation do
    id { SecureRandom.uuid }
    user
    has_voted { false }
    has_written_in { false }
    device_type { "desktop" }
  end
end
