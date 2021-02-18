#!/bin/bash -l
#SBATCH --array=1-10
#SBATCH --job-name=try_job_id
#SBATCH --account=def-mmur      # adjust this to match the accounting group you are using to submit jobs
#SBATCH --time=0-0:5          # adjust this to match the walltime of your job     
#SBATCH --mem=1G            # adjust this according to the memory requirement per node you need
#SBATCH --mail-user=jxiang27@uwo.ca # adjust this to match your email address
#SBATCH --mail-type=ALL

mkdir haha

#SBATCH --output=haha/try_job_id%A_%a.out
#SBATCH --error=haha/try_job_id%A_%a.err

# Choose a version of MATLAB by loading a module:
module load matlab/2019b
# Remove -singleCompThread below if you are using parallel commands:
matlab -nodisplay -r "ps = parallel.Settings; ps.Pool.AutoCreate = false; try_jobID(getenv('SLURM_ARRAY_TASK_ID'))"