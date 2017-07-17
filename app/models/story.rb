class Story < ApplicationRecord
  acts_as_taggable
  validates :name, :link, presence: true
  after_create :create_initial_vote
  belongs_to :user
  has_many :votes do
    def latest
      order('id DESC').limit(3)
    end
  end

  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end

  scope :upcoming, -> {where('votes_count <5').order('id DESC')}
  scope :popular, -> {where('votes_count >=5').order('id DESC')}


  protected

  def create_initial_vote
    votes.create user: user
  end
end