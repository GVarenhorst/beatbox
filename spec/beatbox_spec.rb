require "./lib/beatbox"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do

  it "exists" do
    bb = BeatBox.new

    expect(bb).to be_an_instance_of(BeatBox)
    expect(bb.list).to be_a(LinkedList)
    expect(bb.list.head).to eq(nil)
  end
end