class CreateTestimonials < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials do |t|
      t.string :reviewer_first_name
      t.string :reviewer_last_name
      t.boolean :featured_review
      t.text :review
      t.datetime :review_date

      t.timestamps
    end
  end
end
