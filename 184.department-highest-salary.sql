--
-- @lc app=leetcode id=184 lang=mysql
--
-- [184] Department Highest Salary
--

-- @lc code=start

SELECT Department,Employee,Salary from (SELECT a.Name as 
Department,b.Name as Employee,b.Salary as Salary,
rank() over(partition by a.Name ORDER BY b.Salary DESC) as rnk
 from Department a join Employee b on a.Id=b.DepartmentId)t1 
 where rnk=1;
-- @lc code=end

