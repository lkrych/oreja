Given(/^the following providers exist:$/) do |providers_table|
  providers_table.hashes.each do |provider|
    # each returned element will be a hash whose key is the table header.
    Provider.create(provider)
  end
end

Given(/^the following podcasts exist:$/) do |podcasts_table|
  podcasts_table.hashes.each do |podcast|
    # each returned element will be a hash whose key is the table header.
    Podcast.create(podcast)
  end
end

Given(/^the following episodes exist:$/) do |episodes_table|
  episodes_table.hashes.each do |episode|
    # each returned element will be a hash whose key is the table header.
    Episode.create(episode)
  end
end

Then(/^I expect to see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I click on "([^"]*)"$/) do |arg1|
  find_link(arg1)
end

Given(/^I pause to inspect$/) do
  binding.pry
end

