code.language: sql
-
tag(): user.code_operators_math
tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_null
tag(): user.code_functions_common

# Data Manipulation/Retrieval

sudo delete: "DELETE "
insert into: "INSERT INTO "
update: "UPDATE "
select: "SELECT "

distinct: "DISTINCT "

select star: "SELECT * "

from: "FROM "
from <user.prose>$:
    "FROM {user.formatted_text(prose, 'SNAKE_CASE')}"
from <user.prose> over:
    "FROM {user.formatted_text(prose, 'SNAKE_CASE')}"

where: "WHERE "
order by: "ORDER BY "
group by: "GROUP BY "
having: "HAVING "
descending: " DESC"
ascending: " ASC"
limit: "LIMIT "
offset: "OFFSET "

as: " AS "
values: "VALUES "
# do I need ON?
on: "ON "
in: " IN "
between: "BETWEEN "

exists: user.insert_between("EXISTS (", ")")
any: user.insert_between("ANY (", ")")
all: user.insert_between("ALL (", ")")

inner join: user.insert_between("INNER JOIN ", " ON ")
inner join using: user.insert_between("INNER JOIN ", " USING ")
left [outer] join: user.insert_between("LEFT OUTER JOIN ", " ON ")
right [outer] join: user.insert_between("RIGHT OUTER JOIN ", " ON ")
full [outer] join: user.insert_between("FULL OUTER JOIN ", " ON ")
cross join: "CROSS JOIN "

with: user.insert_snippet_by_name("withStatement")

# Miscellaneous

sudo send:
    key(end)
    ";"
    key(enter)

dot i d: ".id"
# date: user.insert_between("DATE '", "'")
explain: "EXPLAIN "
explain analyze: "EXPLAIN ANALYZE "

state switch:
    "CASE "
    key(return)
    "END"
    key(up)
    edit.line_end()
state case: user.insert_between("WHEN ", " THEN ")

# Data Definition

create: "CREATE "
alter: "ALTER "
sudo drop: "DROP "

database: "DATABASE "
table: "TABLE "
column: "COLUMN "
constraint: "CONSTRAINT "
sequence: "SEQUENCE "
index: "INDEX "

add: "ADD "
set: "SET "

default: "DEFAULT "
unique: "UNIQUE "
not null: "NOT NULL "
on delete cascade: "ON DELETE CASCADE "
primary key: "PRIMARY KEY "
foreign key: "FOREIGN KEY "
references: "REFERENCES "

# PostgreSQL

meta <user.letters>: "\\{letters} "