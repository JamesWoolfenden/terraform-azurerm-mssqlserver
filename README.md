# terraform-azurerm-msqlserver

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-msqlserver.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-msqlserver.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-msqlserver/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-msqlserver&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-msqlserver/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-msqlserver&benchmark=INFRASTRUCTURE+SECURITY)

This is module to help you deploy SQL ON AZURE.

## Usage

Add **module.sql.tf** to your Terraform code:

```terraform
module "sql" {
  source         = "JamesWoolfenden/mssqlserver/azure"
  version        = "0.0.2"
  resource_group = azurerm_resource_group.examplea-mssql
  database_name  = "mydatabase"
}
```

Supply values for your resource and database name, other values have defaults which can be over ridden.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_mssql_database.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database) | resource |
| [azurerm_mssql_database_extended_auditing_policy.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_database_extended_auditing_policy) | resource |
| [azurerm_mssql_server.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) | resource |
| [azurerm_storage_account.examplea](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [random_password.examplea](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | n/a | `string` | `"exampleaauditlogs"` | no |
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | n/a | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | n/a | `string` | `"Standard"` | no |
| <a name="input_administrator_login_password"></a> [administrator\_login\_password](#input\_administrator\_login\_password) | n/a | `string` | `""` | no |
| <a name="input_audit_retention_in_days"></a> [audit\_retention\_in\_days](#input\_audit\_retention\_in\_days) | Retention period for Audit logs in days | `number` | `90` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | n/a | `string` | n/a | yes |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | n/a | `string` | `"1.2"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `any` | n/a | yes |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | n/a | `string` | `"exampleamssqlserver"` | no |
| <a name="input_sql"></a> [sql](#input\_sql) | n/a | `map` | <pre>{<br>  "administrator_login": "supaman",<br>  "name": "mymssqlserver",<br>  "public_network_access_enabled": false,<br>  "version": "12.0"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database"></a> [database](#output\_database) | n/a |
| <a name="output_server"></a> [server](#output\_server) | n/a |
| <a name="output_storage"></a> [storage](#output\_storage) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-msqlserver&url=https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-msqlserver&url=https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver
[share_email]: mailto:?subject=terraform-azurerm-msqlserver&body=https://github.com/JamesWoolfenden/terraform-azurerm-msqlserver
