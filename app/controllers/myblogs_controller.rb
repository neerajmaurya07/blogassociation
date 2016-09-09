class MyblogsController < ApplicationController
  before_action :set_myblog, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @myblogs = Myblog.all
    respond_with(@myblogs)
  end

  def show
    respond_with(@myblog)
  end

  def new
    @myblog = Myblog.new
    respond_with(@myblog)
  end

  def edit
  end

  def create
    @myblog = Myblog.new(myblog_params)
    @myblog.save
    respond_with(@myblog)
  end

  def update
    @myblog.update(myblog_params)
    respond_with(@myblog)
  end

  def destroy
    @myblog.destroy
    respond_with(@myblog)
  end

  private
    def set_myblog
      @myblog = Myblog.find(params[:id])
    end

    def myblog_params
      params.require(:myblog).permit(:name)
    end
end
