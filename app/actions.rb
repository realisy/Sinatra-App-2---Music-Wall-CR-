# Homepage (Root path)
get '/' do
  erb :index
end

get '/track' do
  @track = Track.all
  erb :'tracks/index'
end

post '/track' do
  @track = Track.new(
    title: params[:title],
    url: params[:url],
    author:  params[:author]
  )
  if @track.save
    redirect '/track'
  else
    erb :'tracks/new'
  end
end

get '/track/new' do
  erb :'tracks/new'
end

get '/track/:id' do
  @track = Track.find params[:id]
  erb :'tracks/show'
end
