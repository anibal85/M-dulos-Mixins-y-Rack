module Formula
	def perimetro
		p = 2*(self.largo + self.ancho)
		puts "Perimero = #{p}"
	end

	def area
		a = self.largo*self.ancho
		puts "Area = #{a}"
	end

end

class Rectangulo
	include Formula
	attr_reader :largo, :ancho
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end

	def lados
		puts "Largo: #{@largo}, Ancho: #{@ancho}"
	end
end

class Cuadrado
	include Formula
	attr_reader :largo, :ancho
	def initialize(largo, ancho)
		@largo = largo
		@ancho = ancho
	end

	def lados
		puts "Largo: #{@largo}, Ancho:#{@ancho}"
	end
end

c = Cuadrado.new(5,5)
c.perimetro
c.lados
c.area

r = Rectangulo.new(9,15)
r.lados
r.perimetro
r.area
