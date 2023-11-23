module Api
    class HoldingsController < ApplicationController
        def index
            @holdings = Holding.all
            render json: @holdings
        end

        def show
            @holding = Holding.find(params[:id])
            render json: @holding
        end

        def create
            @holding = Holding.new(holding_params)

            if @holding.save
                render json: @holding
            else
                render json: @holding.errors, status: :unprocessable_entity
            end
        end

        def update
            @holding = Holding.find(params[:id])

            if @holding.update(holding_params)
                render json: @holding
                else
                render json: @holding.errors, status: :unprocessable_entity
            end
        end

        def destroy
            @holding = Holding.find(params[:id])

            if @holding.present?
                @holding.destroy
                render json: @holding
            else
                render json: {error: "holding not found"}
            end
        end

        private

        def holding_params
            params.require(:holding).permit(:emblem, :wallets)
        end
    end
end