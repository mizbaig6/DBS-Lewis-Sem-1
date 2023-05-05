import pymysql
# establishing Mysql database connection
db = pymysql.connect(host='localhost',    
                     user='root',         
                     password='***********', 
                     database = 'watercare'
                     )        


#generating subset data report of order details
def orders():
    c = db.cursor()
    qry = """select o.* from watercare.order o left join delivery d on o.orderId= d.order_orderid;"""
    c.execute(qry)
    Tabledata = c.fetchall()
    for e in Tabledata:
        print(e)
        continue
orders()
db.close()