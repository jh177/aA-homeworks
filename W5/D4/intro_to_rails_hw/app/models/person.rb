class Person < ApplicationRecord
  validates :name, presence: true
  validate :check_name_length

  def check_name_length
    unless self.name.split(" ").length >= 2
      errors[:name] << "must be full name"
    end
  end

  belongs_to(:house, {
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :House
  })

end