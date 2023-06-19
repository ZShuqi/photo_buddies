if @booking.persisted?
  json.inserted_item render(partial: "events/booking", formats: :html, locals: {book: @booking})
else
  # json.form render(partial: "reviews/form", formats: :html, locals: {restaurant: @restaurant, review: @review})
end
