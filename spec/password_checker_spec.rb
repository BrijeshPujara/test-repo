require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password length is equal to 8" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check("chipmunk")).to eq true
  end

  it "returns true if password length is more than 8" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check("helicopter")).to eq true
  end

  it "fails if password length is less than 8" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check("galaxy") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails if given an empty string" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "fails if given no argument" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check() }.to raise_error ArgumentError
  end

  it "fails when given an integer as an argument" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check(1234) }.to raise_error NoMethodError
  end

  it "fails when given an float as an argument" do
    password_checker = PasswordChecker.new()
    expect { password_checker.check(1234.0) }.to raise_error NoMethodError
  end

  it "fails when given an array" do
    password_checker = PasswordChecker.new()
    expect(password_checker.check([1, 2, 3, 4, 5, 6, 7, 8])).to eq true
  end
end