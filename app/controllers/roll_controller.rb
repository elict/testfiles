class RollController < ApplicationController

before_action :set_roll

def send2
 respond_to do |format|
   
   gamblingAmt = roll_params
   inter = gamblingAmt[:bet].to_i
   inter2 = @roll[:amount].to_i
   inter3 = inter2 - inter
   @roll[:amount] = inter3  
#   gamblingInt = :amount.to_i
#   gamblingInt = gamblingInt - gamblingAmt
     if @roll.update(gamblingAmt)
        format.html { redirect_to gambling_path, notice: @roll[:amount] }

     else
     end
     end
          
end




def rolling
end
def gambling 

#@gamble3 = Gamble.find(params[:id])

end

def set_roll

@roll = Gamble.find(params[:id])
end

def roll_params
  params.require(:gamble).permit(:amount, :username, :bet)
end


end