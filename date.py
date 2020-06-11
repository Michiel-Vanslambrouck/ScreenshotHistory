import os

path = 'D:/Greenshot-repo/'

dates = []
times = []
# r=root, d=directories, f = files
for r, d, f in os.walk(path):
    for file in f:
        if '.png' in file:
            L = str.split(file, ' ')
            dates.append(L[0])
            times.append(L[1])

for d in dates:
    print(d)

with open("dategs.txt", 'w') as output:
    for date in dates:
        output.write(date + '\n')

with open("timegs.txt", 'w') as output:
    for time in times:
        output.write(time + '\n')
