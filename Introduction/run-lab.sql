-- ============================================
-- Lab 01: Query Execution with Output Capture
-- ============================================

-- Error handling
WHENEVER SQLERROR EXIT SQL.SQLCODE;

-- Set output formatting for readability
@output-formatting.sql

-- Start recording output (absolute path)
SPOOL C:\Users\RTEX\Documents\dba-lab-mit-8\Introduction\outputs\lab-01-output.txt

-- ============================================
-- Query 1: List all employees
-- ============================================
PROMPT ========================================
PROMPT Query 1: All Employees
PROMPT ========================================
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY FROM Employees;

-- Add spacing between queries
PROMPT 

-- ============================================
-- Query 2: Employees by Department
-- ============================================
PROMPT ========================================
PROMPT Query 2: Employees by Department
PROMPT ========================================
SELECT department_id, COUNT(*) as employee_count FROM employees GROUP BY department_id;

-- Stop recording
SPOOL OFF

SET HEADING OFF ECHO OFF FEEDBACK OFF
PROMPT .
PROMPT ========================================
PROMPT Output saved to lab-01-output.txt
PROMPT ========================================
