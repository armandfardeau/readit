class Story < ApplicationRecord
  validates :name, :link, presence: true

  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end
end
