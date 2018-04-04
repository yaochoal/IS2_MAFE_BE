class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def show
    render json: @contact
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    render json: @contact
  end

  def update
    @contact.update(contact_params)
    render json: @contact
  end

  def destroy
    @contact.destroy
    render json: @contact
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:name, :lastname, :email, :subject, :message)
    end
end
