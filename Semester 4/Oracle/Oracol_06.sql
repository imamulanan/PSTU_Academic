CREATE USER C##Dora IDENTIFIED BY aaa;
SHOW USER;
GRANT CREATE SESSION TO C##Dora;

ALTER USER C##Dora IDENTIFIED BY aaa;
PASSWORD C##DORA;

(New pass 1234)

COMMIT;

CONNECT C##Dora/1234;
SHOW USER;

PASSWORD;

-- profile
CREATE PROFILE C##LIMITED_PROFILE LIMIT
FAILED_LOGIN_ATTEMPTS 3;

ALTER USER C##Dora PROFILE C##LIMITED_PROFILE;

-- lock - unlock
ALTER USER C##Dora ACCOUNT LOCK;
ALTER USER C##Dora ACCOUNT UNLOCK;


1. User Creation & Authentication

CREATE USER C##Dora IDENTIFIED BY aaa;
Purpose: Creates a new user named C##Dora with the password aaa.

Note: The C## prefix is required for common users in Oracle Container Databases (CDBs).

2. Show Current User

SHOW USER;
Purpose: Displays the currently logged-in user (e.g., USER is "SYS").

3. Grant Login Privilege
GRANT CREATE SESSION TO C##Dora;
Purpose: Allows C##Dora to connect to the database. Without this, the user cannot log in.

4. Password Management

ALTER USER C##Dora IDENTIFIED BY aaa;  -- Redundant (same password as before)
PASSWORD C##DORA;                      -- SQL*Plus command to change password interactively
Notes:

ALTER USER resets the password (redundant here since the password is unchanged).

PASSWORD is a SQL*Plus command to change a user's password interactively. It will prompt for a new password.

5. Commit (Unnecessary)

COMMIT;
Note: DDL statements (e.g., CREATE USER, GRANT) auto-commit in Oracle. This line is redundant.

6. Connect as New User

CONNECT C##Dora/aaa;
SHOW USER;
Purpose: Connects to the database as C##Dora and verifies the user with SHOW USER.

7. Password Command

PASSWORD;
Purpose: In SQL*Plus, this interactively changes the password for the current user (C##Dora). The script will pause for input.

8. Security Profile

CREATE PROFILE C##LIMITED_PROFILE LIMIT FAILED_LOGIN_ATTEMPTS 3;
ALTER USER C##Dora PROFILE C##LIMITED_PROFILE;
Purpose:

Creates a profile C##LIMITED_PROFILE that locks the account after 3 failed login attempts.

Assigns this security profile to C##Dora.

9. Account Lock/Unlock

ALTER USER C##Dora ACCOUNT LOCK;    -- Locks the account
ALTER USER C##Dora ACCOUNT UNLOCK;  -- Unlocks the account
Purpose: Demonstrates locking/unlocking the user account for security maintenance.