require 'pry'

class StudentsController < ApplicationController
    set :default_content_type, 'application/json'
    

  get "/students" do
    # binding.pry
      Student.all.to_json(include: [:notes])
  end

  get "/students/abc" do
    Student.all.order("name").to_json
  end

  post "/students" do
      student = Student.create(name: params[:name], image_url: params[:image_url])
      student.to_json(include: [:notes])
  end


  delete "/students/:id" do
      #binding.pry
      student = Student.find_by_id(params["id"])
      student.destroy
      student.to_json
       
  end 
  
  end