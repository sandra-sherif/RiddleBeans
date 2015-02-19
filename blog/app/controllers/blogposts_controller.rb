class BlogpostsController < ApplicationController
 def index
    @blogposts = Blogpost.all
  end
def show
	@blogpost = Blogpost.find(params[:id])
end
def new
	@blogpost = Blogpost.new
end

def edit
	@blogpost = Blogpost.find(params[:id])
end

def create
	@blogpost = Blogpost.new(blogpost_params)
	
	if @blogpost.save
		redirect_to @blogpost
	else
		render 'new'
	end
end

def update
	@blogpost = Blogpost.find(params[:id])
	if @blogpost.update(blogpost_params)
		redirect_to @blogpost
	else render 'edit'
	end
end
def destroy
  @blogpost = Blogpost.find(params[:id])
  @blogpost.destroy
 
  redirect_to blogposts_path
end

private
def blogpost_params
	params.require(:blogpost).permit(:title, :text)
end

end