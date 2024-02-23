# Test Repo

This is a test repo for a PoC of an assets pipeline in AWS that pulls from Github and connects to an Aurora DB.

# codebuildpolicy.json

This file shows the policy used with the Code Build role

# Notes

Code pipeline is configured with EC2 and not lambda since it needed to write to the DB and be added to a VPC, which Code Pipeline lambda doesn't currently support.  The EC2 provisioning is managed by Code Pipeline.