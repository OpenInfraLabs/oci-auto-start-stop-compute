# OCI CLI Testing

## Objective

Test manual start/stop of compute instance using OCI CLI.

---

## Stop Instance

oci compute instance action 
--instance-id <your-instance-id> 
--action STOP

---

## Start Instance

oci compute instance action 
--instance-id <your-instance-id> 
--action START

---

## Notes

* CLI must be configured using `oci setup config`
* Ensure correct region is used
* Instance OCID should not be exposed in public repos
