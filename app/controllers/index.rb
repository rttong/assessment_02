# Read notes
get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/create' do
  erb :notes_create
end

# Create note
post '/notes/create' do
  @note = Note.new(params[:note])
  if @note.save
    redirect '/'
  else
  	erb :notes_create
  end
end

# Update note
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :notes_edit
end

put '/notes/:id/edit' do
  @note = Note.find(params[:id])
  if @note.update_attributes(params[:note])
    redirect '/'
  else
  	erb :notes_edit
  end
end

# Delete note
get '/notes/:id/delete' do
  @note = Note.find(params[:id])
  erb :notes_delete
end

delete '/notes/:id/delete' do
  @note = Note.find(params[:id])
  confirm_delete
  @note.destroy if confirm_delete
  redirect '/'
end