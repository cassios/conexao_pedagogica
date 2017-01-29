class HomeController < ApplicationController
  def index
  	@pedagogy_innovations = PedagogyInnovation.all
  	@coordinates = {}
  	@pedagogy_innovations.each do |pi|
  		coord = {latitude: pi.latitude, longitude: pi.longitude, title: pi.title, disciplina: pi.discipline.name}
  		@coordinates[pi.id.to_s] = coord
  	end
  end
end
