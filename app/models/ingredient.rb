class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  validates :name, presence: true, uniqueness: true

  def destroy
    raise ActiveRecord::InvalidForeignKey, "Can't destroy if it has doses" unless doses.empty?
    super
  end
end
