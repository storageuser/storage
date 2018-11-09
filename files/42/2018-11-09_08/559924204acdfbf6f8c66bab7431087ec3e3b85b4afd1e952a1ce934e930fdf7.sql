/*информация на станции техобслуживании*/  /*
 CREATE TABLE service(
      model NVARCHAR(255) PRIMARY KEY,
      spare_part NVARCHAR(255)
      )

CREATE TABLE marshrut(
  nomer_marshruta INT PRIMARY KEY,
  first_station NVARCHAR(200),
  last_station NVARCHAR(200)
  )



/* информация об автобусах */
  CREATE TABLE bus(
  model NVARCHAR(255),
  balance INT,
  nomer INT PRIMARY KEY,
  nomer_marshruta INT,
  CONSTRAINT nomer_marshruta FOREIGN KEY(nomer_marshruta) REFERENCES marshrut(nomer_marshruta),
  CONSTRAINT model FOREIGN KEY(model) REFERENCES service(model)
  )

/*информация о водителях*/
  CREATE TABLE voditel(
  FIO NVARCHAR(255),
  INN INT,
  adress NVARCHAR(255),
  phone INT,
  bus INT,
   CONSTRAINT bus1 FOREIGN KEY(bus) REFERENCES bus(nomer)
  )

  /*расписание*/
CREATE TABLE raspisanie(
    nomer_marshruta INT,
    time DATE,
    ostanovka NVARCHAR(100),
    CONSTRAINT nomer_marshruta1 FOREIGN KEY(nomer_marshruta) REFERENCES marshrut(nomer_marshruta)
    )

*/

/*    INSERT INTO marshrut(nomer_marshruta,first_station,last_station)VALUES
      (1,'Платформа Карла Маркса','Попова'),
      (2,'Чернышевского','Пермь 2'),
      (5,'Пермь 2','Мира');
  INSERT INTO bus(model,balance,nomer,nomer_marshruta) VALUES
    ('1:64 FLEETWOOD Bounder RV 2016 Chocolate',1000,10,1),
    ('1:43 ROBUR GARANT 30k VWB I8 1956 Green',2000,13,1),
    ('1:43 ЛАЗ-695 городской «Фестивальный»',3000,20,2),
    ('1:43 Ikarus-260 городской , жёлтый',10000,55,5);

      INSERT INTO raspisanie(nomer_marshruta,time,ostanovka)VALUES
        (1,'2001.01.11','Попова'),
        (2,'2015.03.10','Степанова'),
        (5,'2000.05.01','Пермь');
      INSERT INTO service(model,spare_part,nomer) VALUES
        ('1:64 FLEETWOOD Bounder RV 2016 Chocolate','Колесо',10),
        ('1:43 ROBUR GARANT 30k VWB I8 1956 Green','Мотор',13),
        ('1:43 ЛАЗ-695 городской «Фестивальный»','Двигатель',20),
        ('1:43 Ikarus-260 городской , жёлтый','Руль',55),
        ('1:43 Ikarus-260 городской , жёлтый','Колесо',55);
        INSERT INTO voditel(FIO,INN,adress,phone,bus) VALUES
          ('Мухачев Никита Николаевич',1531511,'ул.Птушника дом 79 кв 23',892353612,10),
          ('Возженников Александр Олегович',125732,'ул.Николаевская дом 12 кв 10',897564212,13),
          ('Кодочигов Николай Петрович',177814,'ул.Петропаловская дом 30 кв 20',891121124,20),
          ('Червон Алексей Игоревич',119531,'ул.Любознательная дом 15 кв 25',891253141,55);*/

/*ФИО водителя которого станция заканчивается на Перми второй*/
/*SELECT FIO FROM voditel WHERE bus=(SELECT nomer FROM bus WHERE nomer_marshruta =(SELECT nomer_marshruta FROM marshrut WHERE last_station='Пермь 2'))*/

/*Вывести запчасти автобуса который едит по маршруту номер 5*/
/*SELECT spare_part FROM service WHERE nomer=(SELECT nomer FROM bus WHERE nomer_marshruta =5)*/
  
  /*Вывести балансовую стоимость автобуса равную 1000*/
 /* SELECT balance FROM bus WHERE balance = 1000*/

  /*Вывести модель и водителя Мухачев Никита Николаевич*/
  /*SELECT bus.model, voditel.FIO FROM bus INNER JOIN voditel ON bus.nomer=voditel.bus WHERE FIO='Мухачев Никита Николаевич'*/
  
  /*Вывести наибольшую балансовую стоимость и наименьшую балансовую стоимость*/
  /*SELECT MAX(balance), MIN(balance) FROM bus*/

   /*Вывести балансовую стоимость для каждой модели*/
   /*SELECT model,balance FROM bus*/

  /*Вывести номер маршрута(5) с моделью и водителем Червон Алексей Игоревич*/
  /*SELECT bus.nomer_marshruta,bus.model,voditel.FIO FROM bus INNER JOIN voditel ON bus.nomer=voditel.bus WHERE FIO='Червон Алексей Игоревич'*/
  
  /*Вывести номер маршрута и остановку Попова*/

/*SELECT nomer_marshruta,ostanovka FROM raspisanie WHERE ostanovka = 'Попова';*/
   
  /*Вывести модель автобуса с запчастью Колесо*/
  /*SELECT model,spare_part FROM service WHERE spare_part = 'Колесо'*/

  /*Определите разницу между максмиальной и минимальной балансовой стоимостью*/
 /* SELECT MAX(balance)-MIN(balance) FROM bus*/

  /*Вывести адрес,телефон и фамилию Кодочигова Николая Петровича*/
  /*SELECT adress,phone,FIO FROM voditel WHERE bus =20*/

    /*Написать запрос который возвращает модель автобуса, который чаще всех был в сервисе*/
  /*SELECT TOP 1 model, COUNT(spare_part) as "кол-зап"  FROM service GROUP BY model ORDER BY [кол-зап] DESC*/
  
