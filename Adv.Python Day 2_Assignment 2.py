#2.You have a list of email addresses and you want to extract the domain part (the part after '@') from each email address.
#List of email addresses
emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]
#Extract the domain part from each email
domains = [email.split("@")[1] for email in emails]
#Print the resulting list
print(domains)

#Output
['example.com', 'sample.org', 'mydomain.net']

