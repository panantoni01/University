
class Integer
    def czynniki
        n = (Math.sqrt(self)).floor
        divisors = [1,self]
        (2..n).each{
            |i|
            if 
                self % i == 0
                divisors<<i<<self/i
            end
        }
        if n*n==self
            divisors.pop
        end
        return divisors
    end
    def ack(y)
        if self==0
            return y+1
        end
        if y==0
            return (self-1).ack(1)
        
        else
            return (self-1).ack(self.ack(y-1))
        end
    end
    def doskonala
        divs = self.czynniki
        sum = divs.reduce(:+) - self
        if sum==self
            return true
        else
            return false
        end 
    end
    def slownie
        connect = {
            0 => 'zero',
            1 => 'jeden',
            2 => 'dwa',
            3 => 'trzy',
            4 => 'cztery',
            5 => 'pięć',
            6 => 'sześć',
            7 => 'siedem',
            8 => 'osiem',
            9 => 'dziewięć'
        }
        words = []
        copy = self
        while copy>0
            n = copy % 10
            words<<connect[n]
            copy /= 10
        end
        return words.reverse()
    end
end
puts "Test czynników:"
puts 10.czynniki
puts '//==============='
puts "Test Ackermanna:"
puts 2.ack(1)
puts '//==============='
puts "Test doskonala:"
puts 8128.doskonala
puts 28.doskonala
puts 8.doskonala
puts '//==============='
puts "Test slownie:"
puts 12345.slownie