module Formula
  def perimetro(lado1, lado2)
    "Perimetro = #{2 * (lado1 + lado2)}"
  end

  def area(lado1, lado2)
    "Area = #{lado1 * lado2}"
  end
end

class Rectangulo
  include Formula
  attr_reader :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "Las medidas de los lados del rectangulo son #{@base} y #{@altura}"
  end
end

class Cuadrado
  include Formula
  attr_reader :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "La medida del lado del cuadrado es #{@lado}"
  end
end

rect1 = Rectangulo.new(4, 8)
puts rect1.area(rect1.base, rect1.altura)
puts rect1.perimetro(rect1.base, rect1.altura)

cuad1 = Cuadrado.new(6)
puts cuad1.area(cuad1.lado, cuad1.lado)
puts cuad1.perimetro(cuad1.lado, cuad1.lado)
