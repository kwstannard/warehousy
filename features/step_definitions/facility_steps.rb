def random_name
  Random.new.rand(1000...9999).to_s
end

Before do
end

After do
end

Given /^I want to track a facility$/ do
end

Given /^it is in (\w+)$/ do |location|
  @location = location
end

Given /^there are (\d+) facilities in (\w+)$/ do |count, location|
  @names = []
  count.to_i.times { @names << random_name }
  @names.each do |name|
    "New facility in #{location} named #{name}"
  end
end

When /^I want to track it$/ do
  post("/facility/create", :location => @location)
end

Then /^the response is "(.+)"$/ do |result|
  response.should match(result)
end

Then /^the screen prints the facilities' names$/ do
  @names.each { |name| @response.should match(name) }
end
