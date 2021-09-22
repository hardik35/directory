-- inserting files/folders at nested levels with


-- creating folder inside root named A
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (2, 1, 'Folder A', 'folder')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (2, 2, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=1 and child.parentId=2


-- creating folder inside A named B
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (3, 2, 'Folder B', 'folder')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (3, 3, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=2 and child.parentId=3


 -- creating file inside A named file.txt
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (4, 2, 'file', 'file', 12, 'a*b', 'txt')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (4, 4, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=2 and child.parentId=4


-- creating folder inside root named C
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (5, 1, 'Folder C', 'folder')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (5, 5, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=1 and child.parentId=5

  -- creating file inside C named img1.img
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (6, 5, 'img1', 'file', 15, 'c*d', 'img')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (6, 6, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=5 and child.parentId=6

   -- creating file inside C named img2.img
INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (7, 5, 'img2', 'file', 18, 'ca*de', 'img')
-- creating self entry in tree
INSERT INTO TREE (parentId, childId, depth) Values (7, 7, 0)
-- adding the depth with all the parents 
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=5 and child.parentId=7