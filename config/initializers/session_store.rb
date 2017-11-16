# allow the user to stay logged in for up to 24 hours of inactivity
Rails.application.config.session_store :cookie_store,
                                       key: :customer_id,
                                       expire_after: 24.hours
# ensure the category search option list refreshes after 12 hours of inactivity
Rails.application.config.session_store :cookie_store,
                                       key: :search_categories,
                                       expire_after: 12.hours
# ensure the shopping cart resets after a week of inactivity
Rails.application.config.session_store :cookie_store,
                                       key: :shopping_cart,
                                       expire_after: 168.hours