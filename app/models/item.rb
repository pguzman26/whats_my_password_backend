#
class Item < ActiveRecord::Base
  # attr_accessible specifies a white list of
  # model attributes that can be set via mass assignment.
  attr_accessible :list_id, :name

  # is a shortcut to all default validators and
  # any custom validator classes ending in
  # Validator’. Note that Rails default
  # validators can be overridden inside specific
  # classes by creating custom validator
  # classes in their place such as PresenceValidator.
  validates :name, :list_id, presence: true

  def self.for_list(list_id)
    where(list_id: list_id)
  end
end
