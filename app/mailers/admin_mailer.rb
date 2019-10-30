class AdminMailer < ApplicationMailer

  def weekly_email
    @return_pending = Return.pending_approval
    @return_fedex = Return.fedex_product
    @return_tsg = Return.ltl_product
    mail( to: "rmontemayor@funaiservice.com, nhart@funaiservice.com, lwang@funaiservice.com, kchen@funaiservice.com, ANguyen@funaicorp.com, jjaimes@funaicorp.com, cgibson@funaiservice.com",
    subject: "Daily Email Funai Team-Aaron's Pending items")
  end
end
