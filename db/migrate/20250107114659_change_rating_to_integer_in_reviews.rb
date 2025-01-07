class ChangeRatingToIntegerInReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rating, :integer
  end
end
# Compare this snippet from db/migrate/20250107114659_change_rating_to_integer_in_reviews.rb:
