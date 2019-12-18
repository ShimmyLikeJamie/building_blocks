require "./lib/caesar_cipher"

describe "#caesar_cipher" do
  it "shifts one lowercase word" do
    expect(caesar_cipher("hi", 1)).to eql("gh")
  end

  it "works with both upper and lowercase" do
    expect(caesar_cipher("Hi", 1)).to eql("Gh")
  end

  it "shifts multiple words" do
    expect(caesar_cipher("Hi hello", 3)).to eql("Ef ebiil")
  end

  it "doesn't affect symbols" do
    expect(caesar_cipher("Hi!", 2)).to eql("Fg!")
  end

  it "wraps properly" do
    expect(caesar_cipher("Aa.", 1)).to eql("Zz.")
  end
end