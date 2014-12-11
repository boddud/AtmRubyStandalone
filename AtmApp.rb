require './UserAuth.rb'
require './DepositMoney.rb'
require './WithDraw.rb'

$uaobj=UserAuthentication.new # creating object for UserAuthentication class
$dmobj=DepoiteMoney.new
$wdobj=WithDraw.new
class Main

@@i=0
def process()
puts "Enter Ur Acc num"
accno=gets.to_i
puts "Enter Ur pin code"
pin=gets.to_i

if $uaobj.validPin(accno,pin)==true
  puts " <=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*>"
  puts "||Welcome to Devraj Bank Pvt Ltd||"
  puts "||1) Click 1 to Deposite money  ||"
  puts "||2) Click 2 to withdraw money  ||"
  puts "||3) click 3 to Show balance    ||"
  puts "||4) Click 4 to add an Acc      ||"  
  puts "||5) Click 5 to logout          ||"
  puts " <=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*> "

  while true 
    puts "Please Enter Your choice"
    choice =gets.to_i
    case choice
    when 1
 $dmobj.depositMoney()
     when 2
       $wdobj.withdrawMoney()
      when 3
        $dmobj.showBal()
      when 4
        $dmobj.addAcc()
      when 5
        $dmobj.logout()
      else 
        puts "U have entered wrong input "
    end
  end
  
  
  
else
  while @@i<3
    puts "U entered wrong pincode"
    puts "Plz try again "
    
    @@i +=1
    if @@i==3
      puts "Your account has been locked for today"
      exit
    end
    process()
  end
  
end
end
main=Main.new

main.process()

end
