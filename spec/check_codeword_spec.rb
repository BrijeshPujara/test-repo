require "check_codeword"

describe "code_codeword method" do
  it "returns 'Correct! Come in. if codework is 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."  
  end

  it "returns 'Close, but nope' when first character as'h' and last character as 'e'" do
    result = check_codeword("home")
    expect(result).to eq "Close, but nope"
  end

  it "returns 'WRONG! when codeword does not match horse" do
    result = check_codeword("apple")
    expect(result).to eq "WRONG!"
  end  

end