

if __name__=='__main__':
    y_last_last = 1
    y_last = -1/7
    print(0,y_last_last,sep=' ')
    print(1,y_last,sep=' ')
    for i in range(2,51):
        y = (69*y_last + 10*y_last_last)/7
        print(i,y,sep=' ')
        y_last_last = y_last
        y_last = y

        
