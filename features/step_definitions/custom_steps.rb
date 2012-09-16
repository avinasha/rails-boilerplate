Given /^I wait for (\d+) seconds?$/ do |seconds| 
  sleep(seconds.to_f) 
end

When /^I reload the page$/ do
  visit (current_path)
end

When(/^I go back$/) do
  visit request.env['HTTP_REFERER']
end

