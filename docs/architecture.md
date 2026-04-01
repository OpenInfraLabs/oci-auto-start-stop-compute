# Architecture Overview

## Goal

Automatically start and stop OCI compute instances using OCI CLI and shell scripts.
---

## Flow

1. Cron job triggers script
2. Script reads instance list
3. OCI CLI executes start/stop action
4. Instance state changes
   * Start instance
   * Stop instance

---

## Components Used

*  OCI Compute Instance
* OCI CLI
* Shell Scripts
* Cron (scheduler)

---

## Notes

Designed for OCI Free Tier
Supports multiple instances via list file
Can be extended to event-driven automation later
