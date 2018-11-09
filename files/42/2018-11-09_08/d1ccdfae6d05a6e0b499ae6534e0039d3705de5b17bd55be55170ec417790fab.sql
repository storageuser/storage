/*�������� ����� �� ����������� � ���������� SALESMAN.*/
/*SELECT SUM (SALARY)  FROM EMPLOYEE INNER JOIN JOB ON EMPLOYEE.JOB_ID = JOB.JOB_ID WHERE JOB.FUNCTION1 = 'SALESPERSON'*/
 
  /*������� ������ �����������, ������� �������� � ������ DALLAS */
/*SELECT * FROM EMPLOYEE INNER JOIN DEPARTMENT D ON D.DEPARTMENT_ID = D.DEPARTMENT_ID INNER JOIN LOCATION L ON D.LOCATION_ID = L.LOCATION_ID WHERE L.REGIONAL_GROUP = 'DALLAS'*/

  /*������� ���������� ����������� �� ������� (�����, ����������)*/
  /*SELECT D.NAME, COUNT(EMPLOYEE_ID) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME*/

  /*+�����*/
 /* SELECT D.NAME, COUNT(EMPLOYEE_ID), SUM(SALARY) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME*/

  /* �������� ������� � ������� ����������� �������� ������ ��� ����(+�����)*/
  /*SELECT D.NAME, COUNT(E.EMPLOYEE_ID),SUM(SALARY) FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.NAME HAVING COUNT(E.EMPLOYEE_ID) > 5*/

 /* ������� ����������� � �� ���� ������� �� ������ SALES*/

  /*������� ����������� � �� ����� ��� ������� �� �����������, �������� � 1981�*/
 
    /*SELECT LAST_NAME,FIRST_NAME FROM EMPLOYEE WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE E) AND  HIRE_DATE BETWEEN '01.01.2018' AND '31.12.2018'*/
  /*����������� ����� � �������� 3 �������� ������ ������������ �����������*/
  /*SELECT TOP 3 E.FIRST_NAME, MAX(SALARY) AS ZARPLATA FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY E.FIRST_NAME*/
  /*������� ������ �����������, ���������� ������������ ���������� ����� � ����� ������*/
  SELECT  MAX(SALARY),D.DEPARTMENT_ID AS MAX_ZP FROM EMPLOYEE E INNER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID GROUP BY D.DEPARTMENT_ID
 /*����������� ����� ����������� � �� �����, ����������� �� 15%*/