import math 

prev = math.log(2021.0/2020.0)

for i in range(21):
    if i == 0:
        print(i,prev,sep=':\t')
    else:
        x = 1/i - 2020*prev
        print(i,x,sep=':\t')
        prev = x
