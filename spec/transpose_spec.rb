require_relative '../lib/transpose'

RSpec.describe Transpose do
  it "test_empty_string" do
    # 
    input = ""

    expected = ""

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_two_characters_in_a_row" do
    
    input = "A1"

    expected = "A\n1"

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_two_characters_in_a_column" do
    
    input = "A\n1"

    expected = "A1"

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_simple" do
    
    input = "ABC\n123"

    expected = "A1\nB2\nC3"

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_single_line" do
    
    input = "Single line."

    expected = "S\ni\nn\ng\nl\ne\n \nl\ni\nn\ne\n."

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_first_line_longer_than_second_line" do
    
    input = "The fourth line.\nThe fifth line."

    expected = "TT\nhh\nee\n  \nff\noi\nuf\nrt\nth\nh \n l\nli\nin\nne\ne.\n."

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_second_line_longer_than_first_line" do
    
    input = "The first line.\nThe second line."

    expected = "TT\nhh\nee\n  \nfs\nie\nrc\nso\ntn\n d\nl \nil\nni\nen\n.e\n ."

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_mixed_line_length" do
    
    input = "The longest line.\nA long line.\nA longer line.\nA line."

    expected = "TAAA\nh   \nelll\n ooi\nlnnn\nogge\nn e.\nglr\nei \nsnl\ntei\n .n\nl e\ni .\nn\ne\n."

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_square" do
    
    input = "HEART\nEMBER\nABUSE\nRESIN\nTREND"

    expected = "HEART\nEMBER\nABUSE\nRESIN\nTREND"

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_rectangle" do
    
    input = "FRACTURE\nOUTLINED\nBLOOMING\nSEPTETTE"

    expected = "FOBS\nRULE\nATOP\nCLOT\nTIME\nUNIT\nRENT\nEDGE"

    expect(Transpose.transpose(input)).to(eq( expected))
  end

  it "test_triangle" do
    
    input = "T\nEE\nAAA\nSSSS\nEEEEE\nRRRRRR"

    expected = "TEASER\n EASER\n  ASER\n   SER\n    ER\n     R"

    expect(Transpose.transpose(input)).to(eq( expected))
  end
end
