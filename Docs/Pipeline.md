## Pipeline
 
### GitHub
Developers can add, commit and push their code to the GitHub repository.

In addition tp, the repositry links and triggers to CircleCI platformm when push occurs. 

### CircleCI
CircleCI reads the configration file in this project `.circleci/config.yml` file which tells sequenece jobs to be done. 

There are 2 main jobs (udagram-frontend & udagram-api) which run by CircleCI.
- **Frontend**: Runs the `build` script given in the `package.json` file. Then uses AWS CLI to upload files to S3 bucket.
- **Api**: Runs the `build` script, sets all environment variables from CircleCI configuration to AWS EB enviorment files,
  then runs the `archive` script to zip files. 
  
  Finally, Archive zip folder being uploaded to S3 of elasticbeanstalk by AWS CLI .