class CuentaBancaria
 attr_accessor :nombre_de_usuario
 attr_reader :vip

 def initialize (nombre_de_usuario, numero_de_cuenta, vip=0)
    raise RangeError, 'numero de cuenta incorrecto!! debe contener 8 digitos!!' if numero_de_cuenta.digits.count != 8 
    raise RangeError, 'opcion para VIP erronea(digite solo "1" o "0")' if vip != 0 &&  vip !=1
    raise RangeError, 'opcion para VIP erronea(ingresar solo 1 digito)' if vip.digits.count != 1 
    
    
    @nombre_de_usuario = nombre_de_usuario
    @numero_de_cuenta = numero_de_cuenta
    @vip = vip

 end 
 
 def vip()
  @vip
 end

 def numero_de_cuenta()
   t=@vip.to_s + '-' + @numero_de_cuenta.to_s
 end

end

print "\n" 
print "ingrese nombre de usuario"
print "\n"
a = gets

print "\n"
print "ingrese numero de cuenta de 8 digitos"
print "\n"
b=gets.chomp.to_i

print "\n"
print "Es cliente VIP? (digite '1' para SI, '0' para NO)"
print "\n"
c=gets.chomp.to_i 
print "\n" * 2


cuenta = CuentaBancaria.new(a, b, c)
print "su numero de cuenta es: #{cuentavip= cuenta.numero_de_cuenta()}"
print "\n"

if (cuentavip2=cuenta.vip) == 1 
   print "Es usted un usuario VIP"
else
   print "Usted NO es un usuario VIP"
end

print "\n" * 2
