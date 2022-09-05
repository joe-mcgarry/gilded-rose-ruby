describe GildedRose do

  it 'initially returns empty array of items' do
    fake_item = double :fake_item, name: "Banana", sell_in: 5, quality: 10 
    gilded_rose = GildedRose.new
    expect(gilded_rose.items).to eq []
  end

  it "can add items to the array" do
    fake_item = double :fake_item, name: "Banana", sell_in: 5, quality: 10 
    gilded_rose = GildedRose.new
    gilded_rose.add_item(fake_item)
    expect(gilded_rose.items).to eq [fake_item]
  end

  it "should add multiple items to the array" do
    fake_banana = double :fake_item, name: "Banana", sell_in: 5, quality: 10
    fake_apple = double :fake_item, name: "Apple", sell_in: 5, quality: 10
    gilded_rose = GildedRose.new
    gilded_rose.add_item(fake_banana)
    gilded_rose.add_item(fake_apple)
    expect(gilded_rose.items).to eq [fake_banana, fake_apple]
  end

end
