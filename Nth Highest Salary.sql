--Solution1
CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
    result NUMBER;
BEGIN
    SELECT MAX(case when salary is not null then salary else null end) INTO result
    FROM (
        SELECT salary, DENSE_RANK() OVER (ORDER BY salary DESC) as r
        FROM Employee
    ) WHERE r = N;
    RETURN result;
END;

--Solution2
CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
   /* Write your PL/SQL query statement below */
   SELECT  DISTINCT salary  INTO result FROM 
   (SELECT salary,DENSE_RANK() OVER (ORDER BY salary DESC) R FROM  Employee) WHERE R = N;
   RETURN result;
   EXCEPTION
   WHEN NO_DATA_FOUND THEN
   RETURN NULL;
END;
