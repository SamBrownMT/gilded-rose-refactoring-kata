require_relative '../gilded_rose'

describe GildedRose do

  describe "#daily_status_update" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).daily_status_update()
      expect(items[0].name).to eq "foo"
    end
    it "does decrease the sell in number by 1" do
      items = [Item.new("bar", 1, 0)]
      GildedRose.new(items).daily_status_update()
      expect(items[0].sell_in).to eq 0
    end
    it "does decrease the quality number by 1" do
      items = [Item.new("baz", 1, 1)]
      GildedRose.new(items).daily_status_update()
      expect(items[0].quality).to eq 0
    end
  end

  describe "#update_sell_in" do
    it "does decrease the sell in number by 1" do
      items = [Item.new("bar", 1, 0)]
      GildedRose.new(items).update_sell_in(items[0])
      expect(items[0].sell_in).to eq 0
    end
  end
end

describe Item do
  describe "#item_status method" do
    it "return a string showing name, sell_in value and quality value" do
      items = [Item.new("bar", 1, 2)]
      expect(items[0].item_status).to eq "bar, 1, 2"
    end
  end
end
