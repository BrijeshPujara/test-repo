require "add_five" # we have to require the file with our code first

# then we set up a test suite - a group of tests.
# we use this string to describe the unit of the code we're testing.
describe "add_five method" do

# next we create a single test example.
# we use the string here to describe the unit of code we're testing
  it "adds 5 to 3 to return 8" do
# we run the method with an example of argument 3
    result = add_five(3)
# and then expect (assert) that in this example it should return 8
    expect(result).to eq 8

# Rspec will run this example, and if this example doesn't work
# the test will fail   
  end

# we can put more test examples here
end   
# but we should only have one test suite per file