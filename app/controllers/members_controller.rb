class MembersController < ApplicationController
  skip_before_action :verify_authenticity_token
  #GET /members
  def index
    @members = Member.where("name LIKE ? OR last_name LIKE?" , "%#{params[:search]}%", "%#{params[:search]}%" )
   # render json: @members
  end

  #GET /members/id
  def show
    @member = Member.find(params[:id])
    end



  #GET /members/new
  def new
    @member = Member.new
  end

  #POST /members
  def create
   if @member = Member.new(name: params[:member][:name],
                         last_name: params[:member][:last_name],
                         gender: params[:member][:gender] ,
                         email: params[:member][:email],
                         status: 0, birth_date: "1996-11-16", cover: params[:member][:cover])

    @member.save
    Log.create(activity: "Se da de alta un nuevo miembro: " + @member.full_name + " email : " + @member.email)
    redirect_to @member
    end
  end

  #/members/:id/edit
  def edit
    @member = Member.find(params[:id])

  end

  #PUT /members/:id
  def update
    @member = Member.find(params[:id])
    if @member.update(name: params[:member][:name],
                      last_name:params[:member][:last_name],
                      gender: params[:member][:gender] ,
                      email: params[:member][:email],
                      status: 1, birth_date: "1996-11-16", cover: params[:member][:cover])

      Log.create(activity: "Se editó al miembro: " + @member.full_name)
      redirect_to @member
    else
      render :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to members_path
    Log.create(activity: "Se eliminó al miembro: " + @member.full_name)

  end

  def create_payment
    @member = Member.find(params[:id])
    @member.update_attribute(:status, 1)
    Log.create(activity: "Pago registrado de: " + @member.full_name)
  end

end
