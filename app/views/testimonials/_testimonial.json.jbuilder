json.extract! testimonial, :id, :reviewer_first_name, :reviewer_last_name, :featured_review, :review, :review_date, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
