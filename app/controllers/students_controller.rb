class StudentsController < ApplicationController
    set :default_content_type, 'application/json'
    

    get "/students" do
      Student.all.to_json(include: [:notes])
  end

  post "/students" do
      student = Student.create(name: params[:name], grade: params[:grade])
      student.to_json
  end


  delete "/students/:id" do
      #binding.pry
      student = Student.find_by_id(params["id"])
      student.destroy
      student.to_json
       
  end 
    
  
  end