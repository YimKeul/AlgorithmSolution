T = int(input())
for _ in range(T):
    r,e,c= list(map(int,input().split(" ")))
    if r+c > e:
        print("do not advertise")
    elif r+c == e :
        print("does not matter")
    else:
        print("advertise")