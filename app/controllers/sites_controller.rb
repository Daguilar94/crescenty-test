class SitesController < ApplicationController
  def home
    puts "HOLAAAAA #{params[:wanted_user]}"
    if params[:wanted_user].present?
      user = User.where('personal_id = ?', params[:wanted_user])
      user[0] == nil ? @accounts = 'none' : @accounts = user[0].accounts
    end
  end
end
