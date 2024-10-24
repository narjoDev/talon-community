code.language: sql
-
tag(): user.code_operators_math
tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_null
tag(): user.code_functions_common

select: "SELECT "
distinct: "DISTINCT "
from: "FROM "
select star from: "SELECT *\nFROM "
where: "WHERE "
order by: "ORDER BY "
group by: "GROUP BY "
having: "HAVING "
descending: " DESC"
ascending: " ASC"
dot i d: ".id"
inner join: user.insert_between("INNER JOIN ", " ON ")
inner join using: user.insert_between("INNER JOIN ", " USING ")
left [outer] join: user.insert_between("LEFT OUTER JOIN ", " ON ")
right [outer] join: user.insert_between("RIGHT OUTER JOIN ", " ON ")
full [outer] join: user.insert_between("FULL OUTER JOIN ", " ON ")
cross join: "CROSS JOIN "

with:
    key(enter up)
    "WITH  AS ("
    key(enter tab)
    "SELECT "
    key(enter shift-tab)
    edit.extend_line_end()
    edit.delete()
    ") "
    key(delete up:2 right:3)

column: "COLUMN "
# column:
#     key(return)
#     ", "

# should this be in a more general file?
clint:
    edit.line_end()
    ","
    key(return)

count: user.code_insert_function("Count", "")

date: user.insert_between("DATE '", "'")

state switch:
    "CASE "
    key(return)
    "END"
    key(up)
    edit.line_end()

state case: user.insert_between("WHEN ", " THEN ")

create: "CREATE "
alter: "ALTER "
update: "UPDATE "
insert into: "INSERT INTO "
explain: "EXPLAIN "
explain analyze: "EXPLAIN ANALYZE "
table: "TABLE "
constraint: "CONSTRAINT "
sequence: "SEQUENCE "
index: "INDEX "
as: " AS "
set: "SET "
default: "DEFAULT "
unique: "UNIQUE "
not null: "NOT NULL "
on delete cascade: "ON DELETE CASCADE "
primary key: "PRIMARY KEY "
foreign key: "FOREIGN KEY "
values: "VALUES "
add: "ADD "
on: " ON "

#dangerous
sudo drop: "DROP "
sudo delete: "DELETE "
