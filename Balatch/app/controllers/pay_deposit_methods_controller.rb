class PayDepositMethodsController < ApplicationController

  def index
    @methods = PayDepositMethod.all
    @method = PayDepositMethod.new
  end

  def create
    @method = PayDepositMethod.new(pay_deposit_method_params)
    if @method.save
      redirect_to methods_path
    else
      @methods = PayDepositMethod.all
      render :index
    end
  end

  def update
    @method = PayDepositMethod.find(params[:id])
    if @method.update(pay_deposit_method_params)
      redirect_to methods_path
    else
      render :edit
    end
  end

  def destroy
    @method = PayDepositMethod.find(params[:id])
    @method.destroy
    redirect_to methods_path
  end

  private

  def pay_deposit_method_params
    params.require(:pay_deposit_method).permit(:name, :group)
  end

end
