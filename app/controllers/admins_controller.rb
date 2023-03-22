class AdminsController < ApplicationController
  def new
    @admin=Admin.new
  end

  def create 
    @admin=Admin.new()
    if @admin.save 
      flash[:success]="admin registration"
    end
  end
end
