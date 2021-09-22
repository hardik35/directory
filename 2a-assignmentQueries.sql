-- inserting files/folders at nested levels with

delete from FILESFOLDERS;
delete from tree;

INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (1, 0, 'root', 'folder');

INSERT INTO TREE (parentId, childId, depth) Values (1, 1, 0);

INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (2, 1, 'Folder A', 'folder');
INSERT INTO TREE (parentId, childId, depth) Values (2, 2, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=1 and child.parentId=2;


INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (3, 2, 'Folder B', 'folder');
INSERT INTO TREE (parentId, childId, depth) Values (3, 3, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=2 and child.parentId=3;


INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (4, 2, 'file', 'file', 12, 'a*b', 'txt');
INSERT INTO TREE (parentId, childId, depth) Values (4, 4, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=2 and child.parentId=4;


INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (5, 1, 'Folder C', 'folder');
INSERT INTO TREE (parentId, childId, depth) Values (5, 5, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=1 and child.parentId=5;

INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (6, 5, 'img1', 'file', 15, 'c*d', 'img');
INSERT INTO TREE (parentId, childId, depth) Values (6, 6, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=5 and child.parentId=6;

INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata, sizeKB, dimensions, format) Values (7, 5, 'img2', 'file', 18, 'ca*de', 'img');
INSERT INTO TREE (parentId, childId, depth) Values (7, 7, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=5 and child.parentId=7;


INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (8, 3, 'Folder D', 'folder');
INSERT INTO TREE (parentId, childId, depth) Values (8, 8, 0);
insert into TREE(parentId, childId, depth)
select parent.parentId, child.childId, parent.depth+child.depth+1
  from TREE parent, TREE child
 where parent.childId=3 and child.parentId=8;