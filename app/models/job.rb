class Job < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def self.search(search_term)
    if Rails.env.development?
        Job.where("title LIKE ?", "%#{search_term}%")
    else
        Job.where("title ilike ?", "%#{search_term}%")
    end
     #Job.where("lower(name) LIKE lower(?)", "%#{search_term}%")
  end

end
