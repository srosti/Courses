name = "mbox-short.txt"
handle = open(name)

data = handle.read()
data = data.splitlines()

from_list = [s for s in data if "From" in s]

time_dict = dict()

for line in from_list:
    words = line.split()
    if len(words) > 2:
        time = words[5]
        time = time.split(':')
        time_dict[time[0]] = time_dict.get(time[0], 0) + 1
        print time

sorted_list = sorted(time_dict.items())
for k, v in sorted_list:
    print k, v




