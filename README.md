# condor
condor template examples

- test/ : simple test with shell script
- test-gpfs/ : test using input and output files from the shared /gpfs mount

## To Run

1. Clone the repo

```
git clone https://github.com/msk-mind/condor.git
```

2. Submit a job

```
cd test
condor_submit submit.sub
```

## To Check your job status

1. Check the queue

```
condor_q
```

2. Check the job in detail (helpful for debugging)

```
condor_q -better-analyze <job_id>
```

3. Check the .log, .err, .out files


