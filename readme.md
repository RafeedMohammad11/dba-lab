# 🗄️ Database Lab Work (Oracle 10g XE - HR Schema)

This repository contains my **Database Lab Works** using:

- **Oracle Database 10g Express Edition (XE)**
- **SQL\*Plus Command Line**
- **HR Sample Database Schema**

The goal of this lab is to practice SQL queries and understand:

- relational database concepts
- joins and subqueries
- aggregation and grouping
- DDL and DML operations
- views, constraints, and indexing

---

# ⚙️ Tools & Environment

## Database

- Oracle 10g Express Edition (XE)

## Command Line Tool

- SQL\*Plus (sqlplus)

## Schema Used

- HR (Human Resources sample database)

---

# 📌 Connecting to Oracle SQL\*Plus

Open command prompt and type:

```sql
sqlplus
```

---

# 📚 Lab Structure & Query Management

## Directory Organization

```
Introduction/
├── lab-01.sql                    (base queries)
├── output-formatting.sql         (SQL*Plus config)
├── run-lab.sql                   (master script that runs all queries)
├── run-queries.ps1               (PowerShell automation script)
└── outputs/
    ├── lab-01-output.txt         (generated output from queries)
    └── lab-02-output.txt         (future labs)
```

## Workflow For Multiple Queries

### Step 1: Add Queries to `run-lab.sql`

Edit the `run-lab.sql` file and add your queries with clear separators:

```sql
SPOOL lab-01-output.txt

PROMPT ========================================
PROMPT Query 1: Description
PROMPT ========================================
SELECT * FROM table_name;

PROMPT
PROMPT ========================================
PROMPT Query 2: Description
PROMPT ========================================
SELECT * FROM another_table;

SPOOL OFF
```

### Step 2: Run All Queries at Once

**Option A: Using PowerShell (Automated)**

```powershell
cd c:\Users\RTEX\Documents\dba-lab-mit-8\Introduction
.\run-queries.ps1 -LabNumber "01" -Username "hr" -Password "hr"
```

**Option B: Manual SQL\*Plus**

```bash
sqlplus hr/hr @run-lab.sql
```

### Step 3: Review Output

Open `outputs/lab-01-output.txt` to see all results in one file.

## Best Practices

✅ **DO:**

- Use `PROMPT` commands to separate queries in output
- Keep related queries in same `run-lab.sql` file
- Use `SPOOL OFF` to close output capture
- Name output files descriptively: `lab-NN-output.txt`
- Version control the SQL files, but `.gitignore` the output files

❌ **DON'T:**

- Run individual queries manually each time
- Mix metadata queries (`DESC`, `SHOW`) in the spool file
- Leave SPOOL ON without OFF command
