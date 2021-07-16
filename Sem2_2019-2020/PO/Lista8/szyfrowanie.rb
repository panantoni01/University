
class Jawna
    def initialize(napis)
        @napis = napis
    end
    def to_s
        "Napis jawny: " + @napis
    end
    def zaszyfruj(klucz)
        str = ""
        chars = @napis.split("")
        chars.each{
            |c|
            nowy = klucz[c]
            str = str + nowy
        }
        return Zaszyfrowane.new(str)
    end
end

class Zaszyfrowane
    def initialize(napis)
        @napis = napis
    end
    def to_s
        "Napis zaszyfrowany: " + @napis
    end
    def odszyfruj(klucz)
        chars = @napis.split("")
        str = ""
        chars.each{
            |c|
            klucz.each{
                |key, value|
                if value == c
                    str = str + key
                end
            }
        }
        return Jawna.new(str)
    end
end

napis = Jawna.new("ruby")
puts napis.to_s
klucz = {'r' => 'a', 'u' => 'b', 'b' => 'c', 'y' => 'd'}
szyfr = napis.zaszyfruj(klucz)
puts szyfr.to_s
deszyfr = szyfr.odszyfruj(klucz)
puts deszyfr.to_s