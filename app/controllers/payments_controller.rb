class PaymentsController < ApplicationController

  #GET /members
  def index
    @members = Member.all
    render json: @members
  end

  #GET /members/id
  def show
    @member = Member.find()
    #render json: @member
  end



  #GET /members/new
  def new
    @member = Member.find(params[:id])
  end

  #POST /members
  def create
    @member = Member.new(name: params[:member][:name],
                         last_name:params[:member][:last_name],
                         gender: params[:member][:gender] ,
                         email: params[:member][:email],
                         status: 1, birth_date: "1996-11-16", cover: params[:member][:cover])

    @member.save
    redirect_to @member

  end

  def create_payment
    @member = Member.find(params[:id])
  end
end
