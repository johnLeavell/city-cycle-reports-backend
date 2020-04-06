class Api::V1::ReportsController < ApplicationController

    def index 
        reports = Report.all
        render json: reports
    end

    def show
        report = Report.find(params[:id])
        if report.valid?
            render json: report
        else
            render json: {message: "Report could not be found"}
        end
    end

    def create
        @user = User.find_by(id: params[:user_id])
        @report = Report.new(report_params)
        if report.valid?
            report.save
            render json: report
        else
            render json: {messge: "Report could not be crated"}
        end
    end

    def update
      report = Report.find(params[:id])
      if repor.valid?
        report.update(report_params)
        render json: report
      else
        render json: {message: "Report could not be updated"}
      end
    end

    def destroy
        report = Report.find(params[:id])
        if report.valid?
            report.destroy
            render json: report
        else
            render json: {error: "Report could not be deleted"}
        end
    end

    def report_params
        params.permit(:title, :content, :user_id, :location, :time, :date, :img_src)
    end
end
