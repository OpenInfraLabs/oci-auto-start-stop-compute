# Architecture Overview

## Goal

Automatically start and stop an OCI compute instance using Events and Functions.

---

## Flow

1. OCI Event is triggered
2. Event invokes OCI Function
3. Function performs action:

   * Start instance
   * Stop instance

---

## Components Used

* OCI Compute Instance
* OCI Events
* OCI Functions
* IAM Policies (for permissions)

---

## Notes

* This is a basic implementation for learning
* Only one compute instance is used
* No production-level scheduling or scaling
