require_relative "gnuplotting.rb"

=begin Commentary
Polecenie: ruby funkcje_zad1.rb
W przykładzie do zadania użyłem funkcji f(x) = x^2 + x*sin(x) - 5
Funkcja rysuj generuje ukryty plik z danymi ".data.dat", na podstawie którego zostaje utworzony plik Graph.plt,
czyli plik wejściowy do programu "gnuplot". 
=end

class Funkcja
    attr_accessor :ex
    def initialize(&function)
       @fun = function
    end
    def value(x)
        return @fun.call(x)
    end
    def poch(x)
        eps = 0.000001
        val1 = self.value(x+eps)
        val2 = self.value(x)
        return (val1-val2)/eps
    end
    def zerowe(a,b,e)
        miejsca = []
        poprz = a
        tiekuszczyj = a+e
        while poprz<=b
            poprz_val = @fun.call(poprz)
            tiek_val = @fun.call(tiekuszczyj)
            if tiek_val*poprz_val<=0
                miejsca << (poprz+tiekuszczyj)/2
            end
            poprz += e
            tiekuszczyj += e
        end
        return miejsca
    end
    def pole(a,b)
        dokl = 1000
        h = (b-a)/dokl
        pole = 0
        (1..dokl).each{ |i|
            p1 = self.value((i-1)*h+a)
            p2 = self.value(i*h+a)
            pole += (p1+p2)*h/2
        }
        return pole
    end
   # include Draw_Graph
    def rysuj(a,b)
        f = self.instance_variable_get(:@fun)
        Draw_Graph.draw(a,b,&f)
    end
end

f = Funkcja.new{ |x| (x*x)+((x*Math.sin(x))-5)}

puts f.value(5)
puts "\n"
puts f.poch(-2)
puts "\n"
puts f.zerowe(-2,5,0.00001)
puts "\n"
puts f.pole(2.0,4.0)

f.rysuj(-20,20)

=begin
    
if self.value(a)*self.value(b)>0
            puts "Nie można znaleźć miejsca zerowego na tym przedziale!"
            return nil
        end
        mid = (a+b)/2.0
        while (a-b).abs>e
            if self.value(a)<e and self.value(a)>-e 
                return a 
            end
            if self.value(b)<e and self.value(b)>-e 
                return b 
            end
            if self.value(mid)*self.value(a)<0
                b = mid
            elsif self.value(mid)*self.value(b)<0
                a = mid
            end
            mid = (a+b)/2.0
        end
        return (a+b)/2
    
=end