import chardet

with open('Superstore_orders.csv', 'rb') as file:
    result = chardet.detect(file.read())
    print(result['encoding'])
