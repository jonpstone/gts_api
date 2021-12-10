require "application_system_test_case"

class TestimonialsTest < ApplicationSystemTestCase
  setup do
    @testimonial = testimonials(:one)
  end

  test "visiting the index" do
    visit testimonials_url
    assert_selector "h1", text: "Testimonials"
  end

  test "creating a Testimonial" do
    visit testimonials_url
    click_on "New Testimonial"

    check "Featured review" if @testimonial.featured_review
    fill_in "Review", with: @testimonial.review
    fill_in "Review date", with: @testimonial.review_date
    fill_in "Reviewer first name", with: @testimonial.reviewer_first_name
    fill_in "Reviewer last name", with: @testimonial.reviewer_last_name
    click_on "Create Testimonial"

    assert_text "Testimonial was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial" do
    visit testimonials_url
    click_on "Edit", match: :first

    check "Featured review" if @testimonial.featured_review
    fill_in "Review", with: @testimonial.review
    fill_in "Review date", with: @testimonial.review_date
    fill_in "Reviewer first name", with: @testimonial.reviewer_first_name
    fill_in "Reviewer last name", with: @testimonial.reviewer_last_name
    click_on "Update Testimonial"

    assert_text "Testimonial was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial" do
    visit testimonials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial was successfully destroyed"
  end
end
