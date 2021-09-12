module Api
    module V1
        class IssuesController < ApplicationController
            protect_from_forgery with: :null_session
            def index
                issues = Issue.all

                render json: IssueSerializer.new(issues).serialized_json
            end

            def show
                issue = Issue.find_by(id: params[:id])

                render json: IssueSerializer.new(issue).serialized_json
            end

            def create
                issue = Issue.new(issue_params)
                if issue.save
                    render json: IssueSerializer.new(issue).serialized_json
                else
                    render json: {error: issue.errors.messages}, status: 422
                end
            end

            def update
                issue = Issue.find_by(id: params[:id])
                if issue.update(issue_params)
                    render json: IssueSerializer.new(issue).serialized_json
                else
                    render json: {error: issue.errors.messages}, status: 422
                end
            end

            def destroy
                issue = Issue.find_by(id: params[:id])
                if issue.destroy
                    head :no_content
                else
                    render json: {error: issue.errors.messages}, status: 422
                end
            end

            private 

            def issue_params
                params.require(:issue).permit(:title, :description, :status)
            end
        end
    end
end