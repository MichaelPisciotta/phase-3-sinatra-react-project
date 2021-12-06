class NotesController < ApplicationController
    set :default_content_type, 'application/json'
    
    get "/notes" do
      Note.all.to_json(include: [:student])
  end

    post "/notes" do
    note = Note.create(name: params[:name], description: params[:description], student_id: params[:student_id])
    note.to_json
  end

    delete "/notes/:id" do
    #binding.pry
    note = Note.find_by_id(params["id"])
    note.destroy
    note.to_json
     
  end 
    
  
  end