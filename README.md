# Sample repo using terraform with github_provider 

### The purpose of this repo is to practice testing with travis, kitchen-terraform and Terraform Enterprise

**This repository is connected to Travis and Terraform Enterprise in order to test terraform code several times before merging and putting code to production with Terraform Enterprise**

# Testing part

### Kitchen test

For kitchen test is needed .kitchen.yml where is defined what kitchen shall do.
The test itself is in the subfolders of "test" folder.

### Travis test

After going to travis-ci.org and connecting your org/repo in GitHub with Travis, you need to have the .travis.yml file,
where travis test is defined. In this case travis uses kitchen-terraform test.

# Prerequisites in order to test locally

**You need first to install Terraform CLI and the other prerequisites below so you can run test locally.**

  -  `brew install terraform`
  -  `brew install rbenv`
  -  `rbenv install 2.3.1`
  -  install chefdk 2.5.3-1 version from the official site
  -  `gem install kitchen-terraform`
  -  `gem install bundler`
  -  `bundle install`
  
**Use `kitchen test` to start the test**
