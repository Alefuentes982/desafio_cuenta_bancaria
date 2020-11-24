 class Carta
    
     attr_accessor :numero, :pinta

     def initialize(numero, pinta)
     @numero = numero
     @pinta = pinta
     end
    
     def numero()
       uno=@numero.to_s
       dos=@pinta
       carta=uno+dos
     end

   end

 pinta_array=['C','D','P','T']

 arreglo=[]

 5.times do

 inicio= Carta.new(Random.rand(1..13), pinta_array.sample)

 n= inicio.numero
 print n
 print "\n" * 2 

 arreglo +=[n]
 end

 print arreglo





