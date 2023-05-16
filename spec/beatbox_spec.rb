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

  it "appends string data into nodes" do
    bb = BeatBox.new

    bb.append("deep doo ditt")

    expect(bb.list.head.data).to eq("deep")
    expect(bb.list.head.next_node.data).to eq("doo")

    bb.append("woo hoo shu")

    # expect(bb.count).to eq(6)

  end

  # xit "can play sounds" do

  #   bb = BeatBox.new

  #   bb.append("deep doo ditt woo hoo shu")

  #   expect(bb.count).to eq(6)
  #   expect(bb.list.count).to eq(6)

    # bb.play 

    # expect(bb.play).to_be_truthy

  # end
end