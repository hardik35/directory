-- find size of folder


-- size of folder C

Select SUM(sizeKB) AS totalsizeKB from filesfolders where metadata='file' and id in (
 Select childId from TREE where parentId=5 and childId<>5
)


-- size of folder root

Select SUM(sizeKB) AS totalsizeKB from filesfolders where metadata='file' and id in (
 Select childId from TREE where parentId=1 and childId<>1
)