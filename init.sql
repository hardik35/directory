CREATE TABLE FILESFOLDERS (
    id INTEGER PRIMARY KEY,
    parentDirectoryId INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    sizeKB INTEGER,
    dimensions CHAR(10),
    format CHAR(10),
    metadata CHAR(10) NOT NULL,
)

CREATE TABLE TREE (
    parentId INTEGER NOT NULL,
    childId INTEGER NOT NULL,
    depth INTEGER NOT NULL
)

