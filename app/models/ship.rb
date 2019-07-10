class Ship
  attr_accessor :name, :type, :booty
  @@ships

  def self.all
    @@ships
  end

  def self.clear
    @@ships.clear
  end
end
