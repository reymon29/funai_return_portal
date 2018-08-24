module Shipping
  class ReturnsController < ApplicationController
    def index
      # @returns = Return.all
      @returns = policy_scope(Return).order(created_at: :desc)
    end
  end
end
