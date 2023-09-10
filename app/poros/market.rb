class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :county,
              :state,
              :zip

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @street = attributes[:street]
    @city = attributes[:city]
    @county = attributes[:county]
    @state = attributes[:state]
    @zip = attributes[:zip]
  end
end