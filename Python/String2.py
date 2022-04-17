email='  facebook.com  abc'
print(len(email))

#REMOVE LEADING SPACES means spaces starting from string
print(len(email.lstrip()))

#REMOVE TRAILING SPACES  means spaces from backward to string
print(len(email.rstrip()))

#REMOVE LEADING AND TRAILING SPACES means removing spaes from start and end both
print(len(email.strip()))