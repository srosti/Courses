name = "mbox-short.txt"
handle = open(name)

data = handle.read()
data = data.splitlines()
email_dict = dict()
for current_line in data:
    words = current_line.split()
    if len(words) > 0:
        if (words[0] == 'From'):
            if words[1] in email_dict:
                email_dict[words[1]] += 1
            else:
                email_dict[words[1]] = 1
max = 0
for key in email_dict:
    value = email_dict.get(key,0)
    if value > max:
        max = value
        email = key

print email, max


