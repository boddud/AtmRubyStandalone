require './UserAuth.rb'
require './DepositMoney.rb'


class WithDraw
 
  def withdrawMoney()
   @obj=DepoiteMoney.new
    puts "please enter how much money to windraw"
    amt=gets.to_i
    if amt>Balance.current_bal
      puts "U dont have sufficient funds in Ur A/C"
      
    @obj.showBal()
     else 
        Balance.current_bal=Balance.current_bal-amt
        puts "Take your money #{amt}"
       
    end
    
  end
end
