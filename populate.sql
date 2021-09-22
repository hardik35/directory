-- for adding the root folder in folders and tree table

INSERT INTO FILESFOLDERS (id, parentDirectoryId, name, metadata) Values (1, 0, 'root', 'folder')

INSERT INTO TREE (parentId, childId, depth) Values (1, 1, 0)