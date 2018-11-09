/*Получить сумму зп сотрудников с профессией SALESMAN.*/
/*SELECT SUM (SALARY)  FROM EMPLOYEE INNER JOIN JOB ON EMPLOYEE.JOB_ID = JOB.JOB_ID WHERE JOB.FUNCTION1 = 'SALESPERSON'*/
 
  /*Вывести список сотрудников, которые работают в городе DALLAS */
/*SELECT * FROM EMPLOYEE INNER JOIN DEPARTMENT D ON D.DEPARTMENT_ID = D.DEPARTMENT_ID INNER JOIN LOCATION L ON D.LOCATION_ID = L.LOCATION_ID WHERE L.REGIONAL_GROUP = 'DALLAS'*/

  /*Вывести количество сотрудников по отделам (отдел, количество)*/
  /*SELECT D.NAME, COUNT(EMPLOYEE_ID) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME*/

  /*+СУММА*/
 /* SELECT D.NAME, COUNT(EMPLOYEE_ID), SUM(SALARY) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME*/

  /* Название отделов в которых сотрудников работает больше чем пять(+СУММА)*/
  /*SELECT D.NAME, COUNT(E.EMPLOYEE_ID),SUM(SALARY) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME HAVING COUNT(E.EMPLOYEE_ID) > 5*/

 /* Вывести сотрудников с ЗП выше средней по отделу SALES*/

  /*Вывести сотрудников с ЗП более чем средняя ЗП сотрудников, принятых в 1981г*/
 
    /*SELECT LAST_NAME,FIRST_NAME FROM EMPLOYEE WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE E) AND  HIRE_DATE BETWEEN '01.01.2018' AND '31.12.2018'*/
  /*Напечатайте имена и зарплаты 3 наиболее высоко оплачиваемых сотрудников*/
  /*SELECT TOP 3 E.FIRST_NAME, MAX(SALARY) AS ZARPLATA FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY E.FIRST_NAME*/
  /*Вывести список сотрудников, получающих максимальную заработную плату в своем отделе*/
  SELECT  MAX(SALARY),D.DEPARTMENT_ID AS MAX_ZP FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.DEPARTMENT_ID
 /*Перечислите имена сотрудников и их оклад, увеличенный на 15%*/