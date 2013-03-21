# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  salutation :string(255)
#  address    :string(255)
#  zipcode    :string(255)
#  city       :string(255)
#  province   :string(255)
#  phone      :string(255)
#  url        :string(255)
#  longitude  :integer
#  latitude   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
