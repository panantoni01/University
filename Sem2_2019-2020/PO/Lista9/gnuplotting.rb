
module Draw_Graph
    def self.draw(a,b,&func)
        datafile = File.open(".data.dat","w")
        if func.nil?
            puts "Nieudany odczyt funkcji"
            return 
        end
        dokl = 1000.0
        n = (b-a)/dokl
        (0..dokl).each{ |i|
            val = func.call(a+i*n)
            datafile.write((a+i*n).to_s," ",val.to_s,"\n")
        }
        datafile.close unless datafile.nil?
        #====================================================
        outputfile = File.open("Graph.plt","w")
        outputfile.write("set title \"Function Graph\"\n")
        outputfile.write("plot \".data.dat\" using 1:2 with lines title \"f(x),<#{a},#{b}>\"""")
        outputfile.close unless outputfile.nil?
    end
end