class BookController < ApplicationController
   def list
      @books = Book.all
      @msg="hellow there"
   end

   def show
      begin
         @book = Book.find(params[:id])
         @s_name=Subject.find(params[:s_id])
         @err=false
         rescue
            @err=true
      end
      
   end
  
   def new
      #@book = Book.new
      @subjects = Subject.all
   end

   def book_params
      params.require(:book).permit(:title, :price, :subject_id, :description)
   end

   def create
      @book = Book.new(book_param)

      if @book.save
         redirect_to :action => 'another' , :controller=>'test'
      else
         @subjects = Subject.all
         render :action => 'new'
      end
   end
   
   def edit
      @book = Book.find(params[:id])
      @subjects = Subject.all
   end
   
   def book_param
      params.require(:book).permit(:title, :price, :subject_id, :description)
   end
   
   def update
      @book = Book.find(params[:id])
      
      if @book.update_attributes(book_param)
         redirect_to :action => 'show', :id => @book
      else
         @subjects = Subject.all
         render :action => 'edit'
      end
   end
   
   def delete
      Book.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
   
   def show_subjects
      @subject = Subject.find(params[:id])
   end

   
end
