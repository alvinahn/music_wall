# Homepage (Root path)

enable :sessions

get '/' do
  @tracks = Track.all
  if session["user"] != nil
    @user = User.find(session["user"])
  end
  erb :'tracks/index'
end

get '/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  erb :'tracks/new'
end

post '/tracks' do
  @track = Track.new(
    title: params[:title],
    author: params[:author],
    url: params[:url],
    user_id: session["user"]
    )
  if @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end

get '/tracks/:id' do
  @track = Track.find params[:id]
  erb :'tracks/show'
end

get '/users/signup' do
  erb :'users/signup'
end

post '/users/signup' do
  @user = User.new(
    email: params[:email],
    password: params[:password]
    )
  if @user.save
    redirect '/'
  else
    erb :'users/signup'
  end
end

get '/users/signin' do
  user_email=params[:email]
  @user = User.find_by(
    email: params[:email],
    password: params[:password]
    )
  if @user != nil
    session["user"] = @user.id
    session["email"]=user_email
    redirect '/'
  else
    erb :'users/signin'
  end
end

post '/users/signout' do
  session["user"] = nil
  redirect '/'
end
