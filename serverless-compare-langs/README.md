# serverless-compare-langs

This directory houses multiple implementations of the same 
application.


## Deployment

Each language's deployment process is similar. Check the 
specific READMEs for instructions. In the typical case,
you enter the `infrastructure` directory and then run
`cdk deploy`.

```console
$ cd infrastructure
$ cdk deploy 
```


## Performance testing

Once everything has been built and deployed, you can use 
Artillery using the scripts in this directory.

```console
$ bash ./load-test.bash
```

## BUGS / TODO

More work needs to be done to streamline each language so that
all of the naming conventions are consistent within the AWS 
dashboard. The Kotlin implementation is the worst offender.
 