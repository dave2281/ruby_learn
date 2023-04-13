BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Posts" (
	"type"	TEXT,
	"created_at"	INTEGER,
	"text"	TEXT,
	"url"	TEXT,
	"due_data"	INTEGER
);
COMMIT;
