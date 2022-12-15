# SAP BTP Action
Deploy to SAP BTP Cloud Foundry and manage your apps and services using the CF CLI easily with this GitHub Action.

## Example Workflow
```
name: Deploy to Cloud Foundry

on:
  push:
    branches:
    - master

jobs:
  build:
    runs-on: ubuntu-18.04
    # Build your app here

  deploy:
    runs-on: ubuntu-18.04
    needs: build
    
    steps:
    - uses: NickChecan/sap-btp-action
      with:
        cf_api: https://api.my-cloud-foundry.com
        cf_username: ${{ secrets.CF_USER }}
        cf_password: ${{ secrets.CF_PASSWORD }}
        cf_org: AwesomeApp
        cf_space: Development
        command: deploy ./project.mtar -f
```
