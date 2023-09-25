
#String Split/Slicing/Dividing/Partitian
#Split
email ="saiadavikayala@gmail.com"
print(email.split("@"))

address: str = """01-05,
KPHB colony,
kukatpalli,
hyderabad,
telangana.
"""
print(address.splitlines())

#Partition
email ="saiadavikayala@gmail.com"
print(email.partition("@"))

#RPartition
email ="saiadavikayala@gmail.com"
print(email.rpartition("@"))