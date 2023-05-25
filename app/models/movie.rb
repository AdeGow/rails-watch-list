class Movie < ApplicationRecord
  has_many :bookmarks
  # before_destroy :check_for_presence_in_list

  validates :title, uniqueness: true, presence: true, allow_blank: false
  validates :overview, uniqueness: true, presence: true, allow_blank: false

  private

  # def check_for_presence_in_list
  #   if !@movie.bookmarks.empty?
  #     errors.add_to_base("cannot delete movie while movie is in a list")
  #     false
  #   end
  # end
end
