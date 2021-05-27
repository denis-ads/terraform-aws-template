# Template terraform 

This Stack is responsable to build the TEMPLATE environment in AWS .......

# Architecture:
  - [diagrama](https://xxxxxxxxxxx)


# Resources:

- VPC
- Subnets
- SG
- S3


## Estrutura de diretorios
  - environments -> parametrização dos recursos.
  - raiz -> código terraform para criação de recursos.


## Configurations 
  - Ambiente dev 
  - Region: us-east-2
  - Terraform version > 12.7
  - Detalhes em:
    - environments/dev.tfvars
    - environments/dev.tfbackend

## Versioning '.tfstate'
  - Create S3 bucket: <Account-Number>-tfstate 
    - example: xxxxxxx-tfstate
  
  - Detalhes em:
    - environments/dev.tfbackend

## Variaveis no diretório:
  - Esse diretório contém as parametrizações para cada ambiente dessa forma podemos deixar o código flexivel para aplicar em diversos ambientes.
    - https://www.terraform.io/docs/backends/config.html
    - https://www.terraform.io/docs/configuration/variables.html

  - environments
    - dev.tfbackend -> parametrização backend..
    - dev.tfvars -> parametrização recursos. 

## Credencias AWS configuradas

## Steps for run the project.
  -DESCREVER MELHOR O OBJETIVO DO SCRIPT  !!!!!
 
  - Exemplo

  - Initialize
  ```
    $ ./terraform.sh dev init
  ```
  - Plan
  ```
    $ ./terraform.sh dev plan
  ```
  - Apply
  ```
    $ ./terraform.sh dev apply
  ```

  - Destroy
  ```
    $ ./terraform.sh dev destroy
  ```
