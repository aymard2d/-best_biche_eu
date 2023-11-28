class Owner::BookingsController < ApplicationController
  def accept
    @owner = Owner.find(params[:id])
    @owner.update(accepted: true, declined: false)
    redirect_to @owner, notice: "Accepté"
  end

  def decline
    @owner = Owner.find(params[:id])
    @owner.update(declined: true, accepted: false)
    redirect_to @owner, notice: "Refusé"
  end
end
