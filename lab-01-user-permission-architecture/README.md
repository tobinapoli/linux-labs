User & Permission Architecture Simulation
Overview

This lab simulates a Linux server environment where multiple users interact with an application directory under a controlled permission model.

The goal is to enforce access control using Linux groups and permissions while applying the principle of least privilege.

Security Decisions
Why 770?

Linux permissions are represented numerically:

The first digit defines owner permissions

The second defines group permissions

The third defines permissions for others

In this case:

7 (rwx) for owner

7 (rwx) for group

0 (---) for others

This ensures that only authorized users (owner or group members) can interact with the application directory, while all other users are completely restricted.

Why separate auditor?

The auditor role represents a read-only user responsible for reviewing logs or system state.

Separating this role ensures:

No modification privileges

Reduced attack surface

Clear separation of responsibilities

What is least privilege?

The principle of least privilege means users should only have the minimum permissions required to perform their tasks.

In this scenario:

Developers can modify application files.

Auditor cannot modify application resources.

Other users have no access at all.

Validation Steps

Execute the setup script.

Switch to user dev1 and verify write access to /srv/app.

Switch to user auditor and attempt to modify /srv/app (should fail).

Confirm permission enforcement using ls -l.

Lessons Learned

Creating and managing Linux users and groups

Understanding permission models

Applying least privilege in real scenarios

Validating access control configurations

What Could Go Wrong If Permissions Are Too Open?

If permissions are overly permissive:

Unauthorized users could modify application files.

Sensitive data could be exposed.

Attackers could escalate privileges.

System integrity could be compromised.
