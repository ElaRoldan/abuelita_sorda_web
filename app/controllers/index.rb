get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


#ESTE ES UN METODO POST
post '/abuelita' do
      #ESTE METODO ES SMILIAR A UN GETS CHOMP 
      user_input = params[:user_input]
  
     case 
      when user_input == user_input.upcase && user_input != "BYE TQM"
        @abuelita = "NO, NO DESDE 1983"
      when user_input == user_input.downcase 
        @abuelita =  "HUH?! NO TE ESCUCHO, HIJO!"
      when user_input == "BYE TQM"
        @abuelita = "BYE MIJITO!"
        redirect to ("/?abuelita=#{@abuelita}")
      else
        @abuelita = "HUH?! NO TE ESCUCHO, HIJO!" 
    end
  #ESTE ES EL COMANDO PARA REFIRECCIONAR
  #("/?abuelita=#{@abuelita}") ESTE ES UN QUERRY STRING
  # LA DIAGONAL ES RAIZ 
  redirect to ("/?abuelita=#{@abuelita}")
end























