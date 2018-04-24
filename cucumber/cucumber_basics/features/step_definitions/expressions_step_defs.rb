Given("I provide an integer of {int}") do |int|
  @arg1 = int
end

Then("I will be able to test the integer") do
  expect(@arg1).to eq 14
end

Given("I provide an float of {float}") do |float|
  @float_string = float
end

Then("I will be able to test the float") do
  expect(@float_string).to eq 21.5
end

Given("I provide specific word {word}") do |word|
  @banana = word
end

Then("I will be able to test the word") do
  expect(@banana).to eq 'banana'
end

Given(/^I provide specific something like (.*) I can capture it using a regex$/) do 
|word|
  @cheese = word
end

Then("I will be able to test the captured regex") do
  expect(@cheese).to eq 'cheese'
end
