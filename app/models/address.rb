class Address < ActiveRecord::Base
  belongs_to :store
  belongs_to :order

  def full_name
    "#{street_name} #{number} #{city} #{zip_code}"
  end
end
