require "faker"

class Orders
  def self.build_order transaction_id
    {
      track_id:     number(8),
      distributor:  Faker::Company.name,
      product_type: number(12),
      product_id:   number(8),
      asset_id:     number(8),
      user_id:      "",
      url:          Faker::Internet.url,
      parental_advistory: "unspecified",
      copyright:    "allrightsreserved",
      owner_id:     "Content Owner"
    }
  end

  def self.number digits
    rand(digits ** 10 - 1).to_s.center(digits, rand(9).to_s)
  end
end

class Store
  def self.get_order transaction_id
    order = Orders.build_order transaction_id
  end
end
