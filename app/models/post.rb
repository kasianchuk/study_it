class Post < ActiveRecord::Base
  validate :country_cannot_be_russia
  scope :ukraine, -> { where(country: "Ukraine")  }
  scope :usa, -> { where(country: "USA")  }

  def title_with_country
    "#{title} #{country}"
  end

  def country_cannot_be_russia
    errors.add(:country, " can't be Russia")  if country ==  "Russia"
  end

end
