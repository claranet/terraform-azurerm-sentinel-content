## 7.2.1 (2024-04-26)


### Bug Fixes

* **AzAPI:** provider pinned `< v1.13` to avoid breaking changes 3e7b40a


### Miscellaneous Chores

* **deps:** update dependency trivy to v0.50.2 dfc9c23
* **deps:** update dependency trivy to v0.50.4 19a428a
* **deps:** update renovate config for azure one + automerge 7d44cdf
* **pre-commit:** update commitlint hook acba527
* **release:** remove legacy `VERSION` file 1defa8b

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
