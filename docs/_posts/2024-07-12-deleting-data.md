---
title: "Deleting data"
h1: "How to handle deleting data"
tags: [ "data_model" ]
---

Inevitably, I will need to delete data.  Should I use hard or soft deletes?

## Hard deletes

Actually remove the rows from the database

Cons:
* No easy way to show what has been deleted
* Reliance on audit logs to see deleted data

## Soft deletes

Add a `deleted_at` timestamp or `deleted` flag to the row

Cons:
* all INSERTs have to be UPSERTs in case a deleted row exists
* if not, duplicates have to be handled (i.e. `deleted` column has be part of the unique index)
* database fills up with unused data
* queries have to handle it (or use a view that does)

## Notes

* I don't think I will need to "undelete" a row.
* There will be an [audit trail]({% post_url 2024-07-13-audit-trail %}), but it will get huge and need to be archived, etc.

