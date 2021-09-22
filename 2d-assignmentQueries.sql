-- deleting files/folders at nested levels

-- deleting folder named C (TODO -> Learn more around this query and optimise it)


Delete from FILESFOLDERS where id IN (Select childId from TREE where parentId=5);

delete from tree where 
  (parentid in (select parentid from tree where childid = 5) and 
  childid in (select childid from tree where parentid = 5)) OR (parentid in (select childid from tree where parentid = 5));
  

