require "yaml"

class UserAuthentication #defining a class with name UserAuthentication
def validPin(accno,pin) # defining method with parameter pin 
    props=YAML.load_file( 'login.yaml' )
    #$file.puts("Your logged in with Account number #{accno}")
   return pin==props["accountNum"] && accno==props["pinNum"]#checking the password if correct return the true value 
  end # end function
end # End of the class

module Balance
  @current_bal=0

  def self.current_bal
    return @current_bal
  end

  def self.current_bal=(val)
    @current_bal=val;
  end
end