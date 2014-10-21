require './UserAuth.rb'
require './UserDetails.rb'
class DepoiteMoney
  
  def showBal() # defining the method to show the balence    
    if Balance.current_bal==0 #checking the condition for current balence
      puts "U have #{Balance.current_bal} Balence" # gives the message to user U have nill balence
      #$file.puts("U have checked u r balance Ur balance is #UserAuthentication1.currenBal")
    else # if if condition fails execute the else block
        puts "Your Balance is #{Balance.current_bal}" #shows the current balence
        
   end # end showbal method
  end # end of the deposite class
  def depositMoney() # defining  the deposit method 
    puts "please enter how much money to deposit" # asking for money how much money U want to deposite
     amt=gets.to_i # reading the input value and converting into integer value we can use gets.chomp.to_i
    puts "u have deposited #{amt}" # giving the info regarding Ur's Balance    
   bal=Balance.current_bal  
   Balance.current_bal=bal+amt
    #UserAuthentication.currentBal=UserAuthentication.currentBal+amt # adding the amount to ur current balance
  end #end of the deposit method
  def logout()
    puts "Thank You for visiting Devraj Bank Pvt Ltd"
    puts "Visit Again.............."
    
    exit
  end
  def addAcc()
    puts "Enter Name of the Acoount "
    aname=gets.chomp
    UserDetails.acc_name=aname
    puts "Enter Account number "
    acnum=gets.to_i
    UserDetails.acc_number=acnum
    puts "enter yor mimnum Balance "
    balance=gets.to_i
    UserDetails.acc_balance=balance
    puts "please set ur password"
    pwd=gets.to_i
    
    puts "Confirm ur password "
    cpwd=gets.to_i
    if pwd==cpwd
      puts "Passwords are matched U r account created successfully"
       UserDetails.acc_pin=pwd
       details=UserDetails.new
      puts "Your account details are \n#{details}"
      
      else  
          puts "Your password missmatch please try again later"
          addAcc()
  end
end
end