class StaticController < ApplicationController
	def home
		if admin_types.include?(current_user.type)
		   @pending_approvals = Post.submitted
		   @recent_audit_items = AuditLog.last(10)
		else
		   @pending_audit_confirmations = current_user.audit_logs.by_start_date
		end
	end
end

