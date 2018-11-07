class CouponsController < ApplicationController

  def new
  end

  def create
    @coupon = Coupon.create(coupon_params(:coupon_code, :store))
    redirect_to @coupon
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def index
    @coupons = Coupon.all
  end

  def edit
  end

  def update
  end

  def delete
  end

  def coupon_params(*args)
    params.require(:coupon).permit(*args)
  end

end
