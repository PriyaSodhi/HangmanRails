When("User fills in the {string} with {string}") do |field, value|
  fill_in(field, :with => value)
end

When("User clicks the {string} link") do |link|
  all(:link, link).each do |l|
    l.click
  end
end

When("User clicks the {string} button") do |btn|
  click_button(btn)
end

Then("User should see {string}") do |content|
  expect(page).to have_content(content)
end

Then("User gets an alert {string}") do |content|
  expect(page).to have_content(content)
end