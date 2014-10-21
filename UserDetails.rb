class UserDetails
  @acc_name=nil
  @acc_number=nil
  @acc_pin=nil
  @acc_balance=nil
  def self.acc_name
    return @acc_name
  end

  def self.acc_name=(val)
    @acc_name=val;
  end

  def self.acc_number
    return @acc_number
  end

  def self.acc_number=(val)
    @acc_number=val;
  end

  def self.acc_pin
    return @acc_pin
  end

  def self.acc_pin=(val)
    @acc_pin=val;
  end

  def self.acc_balance
    return @acc_balance
  end

  def self.acc_balance=(val)
    @acc_balance=val;
  end

  def to_s
    return "Name is: #{UserDetails.acc_name} \nAccount Number is: #{UserDetails.acc_number} \nAccount pin is: #{UserDetails.acc_pin} \nAccount Balance is: #{UserDetails.acc_balance}"
  end
end