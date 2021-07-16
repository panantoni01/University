class Kolekcja
    def initialize()
        @tab = []
        @dl = 0
    end
    def << (obiekt)
        @tab << obiekt
        @dl += 1
    end
    def length()
        return @dl
    end
    def get(i)
        return @tab[i]
    end
    def swap(i,j)
        temp = @tab[i]
        @tab[i]=@tab[j]
        @tab[j]=temp
    end
    def insert(i,val)
        @tab[i] = val
    end
    def to_s
        return @tab.to_s
    end
end

class Sortowanie
    def sort1(table) # Selection_Sort
        unless table.kind_of?(Kolekcja)
            puts "Data not \"sortable\""
            return
        end
        n = table.length()
        i = 0
        while i < n
            j = i + 1
            min = table.get(i)
            min_idx = i
            while j < n
                if (table.get(j)<min)
                    min = table.get(j)
                    min_idx = j
                end
                j += 1
            end
            table.swap(min_idx,i)
            i += 1
        end
    end
    def sort2(table) # Bubble_Sort
        unless table.kind_of?(Kolekcja)
            puts "Data not \"sortable\""
            return
        end
        i = 1
        n = table.length()
        while i<n
            j = 1
            while j < n
                if (table.get(j)<table.get(j-1))
                    table.swap(j,j-1)
                end
                j += 1
            end
            i += 1
        end
    end
end

t = Kolekcja.new
t<< -1
t<<4
t<< -3 
t<<0
t<< -8
t<<2
t<<6
puts t
sorter = Sortowanie.new
sorter.sort1(t)
puts t


t_additional = Kolekcja.new
t_additional<<8.645
t_additional<<6.234
t_additional<< -2.5634667
t_additional<<3.1415
t_additional<< -1.7320508
puts t_additional
sorter.sort2(t_additional)
puts t_additional


not_collection = Array.new
not_collection<<4
not_collection<<1
sorter.sort1(not_collection)