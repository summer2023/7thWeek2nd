# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select e.number,e.name from employees e join ( select Max(salary) max,number from employees group by number) g ON e.number=g.number join Company c ON (e.number=c.id) where e.salary = g.max;