class SchoolClassController < ApplicationController
     def index
        @student_classes = StudentClass.all 
     end
     
     def new 
       @student_classes = StudentClass.new
     end 
     
     def create
      @student_classes = StudentClass.find(params[:id])
      @student_classes = StudentClass.create(params.require(:studentclass).permit(:title,:room_number))
     end
     
     def edit 
        @student_classes = StudentClass.find(params[:id])
     end 
     
     def update
        @student_classes= StudentClass.find(params[:id])
        @student_classes = StudentClass.update(params.require(:studentclass).permit(:title,:room_number))
     end
  
end