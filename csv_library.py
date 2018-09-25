import  csv

def write_data(datas,  filename='output.csv'):
    print(datas[0]['email'])
    print(datas[0]['mobile_no'])
    # TODO :: Write data to file output.csv
    f = open (filename,  'wb')
    fieldnames = ['email',  'mobile_no']
    csvfile = csv.DictWriter(f,  fieldnames=fieldnames)
    csvfile.writeheader()
    for data in datas:
        csvfile.writerow(data)
    f.close()

def read_data(filename):
    f = open (filename, 'r')
    csvfile = csv.reader(f)
    f.close
    return  [row  for  row in csvfile]