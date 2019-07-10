require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb "pirates/new"
    end

    post "/show" do
      @pirate = Pirate.new(params[:pirate])
      params[:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :show
    end
  end
end
