class Space
  
  attr_reader :name, :description, :price

  def initialize (name:, description:, price:)
    @name = name
    @description = description
    @price = price
  end

  def self.all
    spaces = [{
      name: 'Happy House',
      description: 'A really cosy space, where you can relax', 
      price: '24$/night'}
    ]
    spaces.map { |space|
      Space.new(name: space[:name], 
        description: space[:description], 
        price: space[:price])
    }
  end

end

