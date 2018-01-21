class AuditLogsController < ApplicationController


	def index
		@audit_logs = AuditLog.all.page(params[:params]).per(5)
		authorize @audit_logs
	end

end
