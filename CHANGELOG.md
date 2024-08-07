## 7.9.0 (2024-08-09)


### Features

* bump `Microsoft Entra ID` package template version to 3.2.8 + update embedded rules 82884f0
* bump `Syslog` package template version to 3.0.5 45d88b6
* bump `Windows Security` package template version to 3.0.8 739d088
* bump `Zscaler Internet Access` package template version to 3.0.1 + update embedded rules fc0eacc


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.8.0 69d26c7
* **deps:** update dependency opentofu to v1.8.1 c85bff5
* **deps:** update dependency pre-commit to v3.8.0 6f4a906
* **deps:** update dependency trivy to v0.54.1 0d22701
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.1 91f6afe

## 7.8.0 (2024-07-12)


### Features

* bump `Azure WAF` package template version to 3.0.1 + update embedded rules 2cc051d
* bump `Common Event Format` package template version to 3.0.1 2a9b3b5
* bump `Microsoft 365` package template version to 3.0.3 + update embedded rules e43c20e
* bump `Microsoft Entra ID` package template version to 3.2.7 + update embedded rules 952d148
* bump `Microsoft XDR` package template version to 3.0.8 + update embedded rules 1f42c19
* bump `Syslog` package template version to 3.0.4 + update embedded rules bc263d8
* bump `Windows Security` package template version to 3.0.7 + update embedded rules bded994


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.3 fb63ed5
* **deps:** update dependency tflint to v0.51.2 3d59089
* **deps:** update dependency tflint to v0.52.0 36530ed
* **deps:** update dependency trivy to v0.52.1 eb5088b
* **deps:** update dependency trivy to v0.52.2 4e10ecc
* **deps:** update dependency trivy to v0.53.0 95b6470
* **deps:** update pre-commit hook antonbabenko/pre-commit-terraform to v1.92.0 084770f

## 7.7.0 (2024-06-07)


### Features

* bump `Common Event Format` package template version to 3.0.0 d04d177
* bump `Microsoft Entra ID` package template version to 3.2.5 + update embedded rules c5d25a1
* bump `Microsoft XDR` package template version to 3.0.7 + update embedded rules 4961083


### Bug Fixes

* correct entity for rule `External user added and removed in short timeframe` efca180


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.2 b7fe26e
* **deps:** update dependency trivy to v0.52.0 4ffbdf9

## 7.6.0 (2024-05-31)


### Features

* bump `Windows Security` package template version to 3.0.6 + update embedded rules 0b5a022


### Bug Fixes

* correct entity for rule `External user added and removed in short timeframe` 61c8b82


### Miscellaneous Chores

* **deps:** update dependency terraform-docs to v0.18.0 fa9ebd8
* **deps:** update dependency trivy to v0.51.4 1f803aa

## 7.5.0 (2024-05-24)


### Features

* **AZ-1411:** add `Azure Web Application Firewall` package f521366
* bump `Microsoft 365` package template version to 3.0.2 + update embedded rules 0bce161
* bump `Microsoft XDR` package template version to 3.0.6 + update embedded rules cf38130


### Miscellaneous Chores

* **deps:** update dependency trivy to v0.51.2 fc7cca0

## 7.4.0 (2024-05-17)


### Features

* bump `Microsoft XDR` package template version to 3.0.5 + update embedded rules 7d3b911
* bump `SentinelOne` package template version to 3.0.1 727ccfa


### Bug Fixes

* correct entities for rule `Possible Phishing with CSL and Network Sessions` 08a77e2


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.1 3c72b13
* **deps:** update dependency pre-commit to v3.7.1 9af19df
* **deps:** update dependency tflint to v0.51.1 b37351d
* **deps:** update dependency trivy to v0.51.0 bdb8b0a
* **deps:** update dependency trivy to v0.51.1 d20e8ba

## 7.3.0 (2024-05-03)


### Features

* bump `Azure Firewall` package template version to 3.0.4 + update embedded rules c27111b
* bump `Microsoft XDR` package template version to 3.0.4 + update embedded rules ed2e42d
* bump `Okta` package template version to 3.0.7 97743f5
* bump `Syslog` package template version to 3.0.3 + update embedded rules 812f234
* bump `Threat Intelligence` package template version to 3.0.3 + update embedded rules 54c5260
* bump `Windows Security` package template version to 3.0.5 + update embedded rules ffeef41


### Miscellaneous Chores

* **deps:** update dependency opentofu to v1.7.0 8764e9f
* **deps:** update dependency tflint to v0.51.0 850b5e8

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
