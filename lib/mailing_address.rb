class Mailing
  attr_accessor(:street, :city, :state, :zip)
  @@male = []
  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)

  end
  define_singleton_method(:all) do
    @@male
  end

  def save
    @@male.push(self)
  end
end
