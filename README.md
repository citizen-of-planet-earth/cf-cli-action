# CF CLI Action
Deploy to Cloud Foundry and manage your apps and services using the CF CLI easily with this GitHub Action.

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
    - uses: citizen-of-planet-earth/cf-cli-action@master
      with:
        cf_api: https://api.my-cloud-foundry.com
        cf_username: ${{ secrets.CF_USER }}
        cf_password: ${{ secrets.CF_PASSWORD }}
        cf_org: AwesomeApp
        cf_space: Development
        command: push -f manifest-dev.yml
```
