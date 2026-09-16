SELECT sum(score) as SCORE, emp.EMP_NO, emp.EMP_NAME, emp.POSITION, emp.EMAIL
FROM HR_DEPARTMENT as dept
	JOIN HR_EMPLOYEES as emp
		on dept.DEPT_ID = emp.DEPT_ID
			JOIN HR_GRADE as grade
				on emp.EMP_NO = grade.EMP_NO
where grade.year = '2022'
GROUP BY EMP_NO
ORDER BY SCORE desc
LIMIT 1;