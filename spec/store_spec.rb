require_relative "../lib/fakestore"

describe Store do
  it "returns an order" do
    order = Store.get_order "AAAAAAFFFFFF"
    expect(order[:owner_id]).to eq "Content Owner"
  end
end
