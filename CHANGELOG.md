## 7.2.0 (2024-04-19)


### Features

* **AZ-1389:** remove duplicate MITRE Technique value on these 2 rules: `AWS Config Service Resource Deletion Attempts` and `Suspicious AWS CLI Command Execution` 3dab5f2
* **AZ-1389:** update AWS package template to 3.0.2 version 65beebc


### Continuous Integration

* **AZ-1391:** enable semantic-release [skip ci] 4b3f1de
* **AZ-1391:** update semantic-release config [skip ci] 6c928b7

# v7.1.0 - 2024-04-12

Changed
  * AZ-1389: Add `incidentConfiguration` block + `CloudApplication` entity for these 2 rules: `NRT New access credential added to Application or Service Principal` and `NRT First access credential added to Application or Service Principal where no credential was present`

Fixed
  * AZ-1387: README typos

# v7.0.0 - 2024-03-29

Added
  * AZ-1365: Microsoft Sentinel Content module first release
