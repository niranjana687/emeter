class Api::V1::MetersController < ApplicationController
    #GET/meters
    def index
        @meters = Meter.All 
        render json: @meters 
    end

    #GET/meters/:id
    def show
        @meter = Meter.find(params[:id])
        render json: @user
    end

    # POST/meters
    def create
        @meter = Meter.new(meter_params)
        if @meter.save
            render json
        else
            render error: { error: 'Unable to create meter'}, status: 400
         end
    end
    
    #POST/meters/:id
    def update
        @meter = Meter.find(params[:id])
        if @meter
            @meter.update(meter_params)
            render json: {message: 'Meter succesfully updated'}, status: 200
        else
            render json: { error:'Unable to open updated meter' }, status: 400
        end
    end

    #DELETE /user/:id
    def destroy
        @meter = Meter.find(params[:id])
        if @meter
            @meter.destroy
             render json:{ message:'Meter succesfully deleted'}, status: 200
        else
            render json: { messages: 'Unable to delete meter'}, status:400
        end
    end

    private

    def meter_params
        params.require(:meter).permit(:energy_consumed, :total_energy_credits, :energy_credits_rate, :balance)

end
