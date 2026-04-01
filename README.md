## Goal

Automatically start and stop OCI compute instances using OCI CLI and shell scripts.
This project focuses on a practical, Free Tier–compatible approach to automation without relying on paid services like OCI Functions.

## 📌 Project Overview

This is a hands-on learning project to automate starting and stopping OCI compute instances using:

* OCI CLI
* Shell scripting
* Cron (for scheduling)

This approach is designed to work within OCI Free Tier limitations.

---

## 🎯 Objective

Automatically:

* Stop compute instances when not in use
* Start them based on defined schedules

---

## 🧱 Architecture (High-Level)

Script (Cron) → OCI CLI → Compute Instance

---

## ⚙️ Approach Note

OCI Functions require a paid account, so this project uses CLI-based automation to achieve similar results within Free Tier.
