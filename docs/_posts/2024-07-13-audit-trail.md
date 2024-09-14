---
title: "Audit trail"
tags: [ "data_model" ]
---

I want to have a detailed log of everything that changes.

Schema:
* table_id: which table is being updated
* row_key: primary key of the changed row
* action: insert, update or delete
* before: JSONB of data before (or null for insert)
* after: JSONB of updated data (or null for delete)
* admin_id: user that is making the change
* request_id
* session_id
* pib_key: the primary key of the identity

Related links:
* Eric Fritz's [Easy Peasy SQL Audit Tables](https://eric-fritz.com/articles/easy-peasy-sql-audit-tables/)
* Example from David Fetter's Database Doings: [table setup](https://databasedoings.blogspot.com/2017/07/cool-stuff-in-postgresql-10-partitioned.html) and [triggers](https://databasedoings.blogspot.com/2017/07/cool-stuff-in-postgresql-10-transition.html)
* [pgMemento](https://github.com/pgMemento/pgMemento/wiki) - overkill
* [pgAudit](https://github.com/pgaudit/pgaudit) - overkill
