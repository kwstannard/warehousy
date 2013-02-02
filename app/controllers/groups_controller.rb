class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    Group.create!(sanitized_params)
    redirect_to action: 'index'
  end

  def index
    @groups = Group.all
  end

  private
  def sanitized_params
    params['group'].slice('name')
  end
end
