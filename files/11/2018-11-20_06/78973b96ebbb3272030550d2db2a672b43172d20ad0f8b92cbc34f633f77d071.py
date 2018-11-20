import random
import re
import time
import urllib3.request
import requests
import math

up = 0
down = 0
rubl = 1000.0
bitcoin = 0.0
up_difference = 0.0
down_difference = 0.0
sell = False

def rub(bitcoin,rubl):
    pass

def bit(rubl,rub):
    pass

print("Курс биткоина в рублях:")
while True:
    # загрузка старой цены биткоина
    old_bitcoint = open('C:/Users/Kecs/YandexDisk/bot/bitcoint/old_bitcoint.txt', 'r')
    old_bitcoint_rub = old_bitcoint.read()
    old_bitcoint_rub = float(old_bitcoint_rub)
    old_bitcoint.close()

    coindesk_rub = ('https://api.coindesk.com/v1/bpi/currentprice/RUB')
    sait = requests.get(coindesk_rub)
    rub_message = sait.text[sait.text.index('"code":"RUB","rate":"') + 21:sait.text.rindex('","description"') - 2] # цена бикоина для отправки
    rub = sait.text[sait.text.index('"Russian Ruble","rate_float":') + 29:sait.text.rindex('}}}') - 2] # цена бикоина для счёта
    rub = float(rub)

    if rub != old_bitcoint_rub:
        difference_bitcoint_rub = rub - old_bitcoint_rub
        difference_bitcoint_rub = round(difference_bitcoint_rub, 2)
        if difference_bitcoint_rub < 0:
            print("1 bitcoin - "+str(rub_message)+" rub | ▼ "+str(math.fabs(difference_bitcoint_rub))+"")
            down = down + 1
            down_difference = down_difference + difference_bitcoint_rub
            if down > up:

                if (down-up == 2) and sell == False:
                    up = 0
                    down = 0
                    sell = True
                    print ('-Биты!')
                    #bitcoin = bit(rubl)

        elif difference_bitcoint_rub > 0:
            print("1 bitcoin - " + str(rub_message) + " rub | ▲ "+str(difference_bitcoint_rub)+"")
            up = up + 16
            up_difference = up_difference + difference_bitcoint_rub
            if up > down:

                if (up-down == 2) and sell == True:
                    up = 0
                    down = 0
                    sell = False
                    print ('Рубли!')
                    #up_difference = 0
                    #rubl = rub(bitcoin)

        file = open('C:/Users/Kecs/YandexDisk/bot/bitcoint/old_bitcoint.txt', 'w') # запись новой цены бикоина
        file.write(str(rub))
        file.close()
        time.sleep(15)