class NovellsController < ApplicationController
  def index
	@novells=Novell.all
  end

  def show
	@novell=Novell.find(params[:id])
  end

  def new
	@novell=Novell.new
	@genre=Genre.new
	@author=Author.new
	@publisher=Publisher.new
  end

  def create
	@novell = Novell.new(novell_params)
	if @novell.save
		redirect_to novells_path
	else 
		render 'new'
	end
  end

  def update
    @novell = Novell.find(params[:id])
    if @novell.update(novell_params)
      redirect_to @novell
    else 
      render 'edit'
    end
  end

  def edit
  @novell=Novell.find(params[:id])
  end

  def destroy
	@novell = Novell.find(params[:id])
	@novell.destroy
	redirect_to novells_path
  end
  private 
  def novell_params
	params.require(:novell).permit(:title, :genre_id, :author_id, :publisher_id, :isbn, :price, :publication, :format, :description, :pages)
  end
end
