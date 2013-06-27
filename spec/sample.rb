describe Array, " :" do before do
    @empty_array = [] end
  it "#empty? true " do
    @empty_array.should be_empty
  end
  it "#size 0 " do
    @empty_array.size.should == 0
  end
  after do @empty_array = nil
  end
end

