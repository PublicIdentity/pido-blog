---
title: "Audit trail"
tags: [ "data_model" ]
---

I want to have a detailed log of everything that changes.

Schema:
* Table
* Row: primary key of the changed row
* Action: insert, update or delete
* Before: JSONB of data before (or null for insert)
* After: JSONB of updated data (or null for delete)
* User: user that is making the change
* Session
* ?Pido?: maybe the primary key of the identity if it is not the main identity table.

Related links:
* Example from David Fetter's Database Doings: [table setup](https://databasedoings.blogspot.com/2017/07/cool-stuff-in-postgresql-10-partitioned.html) and [triggers](https://databasedoings.blogspot.com/2017/07/cool-stuff-in-postgresql-10-transition.html)
* [pgMemento](https://github.com/pgMemento/pgMemento/wiki) - overkill
* [pgAudit](https://github.com/pgaudit/pgaudit) - overkill
