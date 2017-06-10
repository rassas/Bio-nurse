class CartController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:address_mac].present? && params[:temperature_level].present? && params[:heart_beat].present?

      @cart = Cart.find_or_create_by(address_mac: params[:address_mac])

      @datum = Datum.create(cart_id: @cart.id)

      @heart_beat = HeartBeat.create(data_id: @datum.id, val: params[:heart_beat])

      @temperature_level = TemperatureLevel.create(
        data_id: @datum.id,
        val: params[:temperature_level]
      )
      render json: { status: 201 }
    else
      render json: { status: 403 }
    end
  end

  def show
    @cart = Cart.find(params[:id])
  end
end
