## Description:

This example shows how to distribute jobs across all nodes in a pool and to use a shared file system by virtue of this property in the submit file

```
Requirements = TARGET.UidDomain == "mskcc.org" && \
               TARGET.FileSystemDomain == "mskcc.org"
```

The example runs 100 jobs and outputs 1 line per job in an ouptut file. The line contains the nodename of the node on which the job was run, and the line is written to a file in the `output_dir` named after the node. Upon execution, the following test shows how the jobs were distributed across all nodes in the pool. 

```
grep -o "Hello World" output_dir/<NODE_NAME> | wc -l
```

The counts from all the output files should add up to 100. 

## Execution:

```
$ ./init.sh
$ condor_submit hello.sub
$ condor_q

# on job completion, run for each file/node_name in the output_dir
$ grep -R <NODE_NAME> output_dir/ | wc -l

$ ./clean.sh
```

## References:
https://htcondor.readthedocs.io/en/v8_8/admin-manual/security.html?highlight=nobody#who-jobs-run-as
https://htcondor.readthedocs.io/en/v8_8/users-manual/submitting-a-job.html#submitting-jobs-using-a-shared-file-system
