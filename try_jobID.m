function try_jobID(jobid)

% % Create a "local" cluster object
% local_cluster = parcluster('local')
% 
% % Modify the JobStorageLocation to $SLURM_TMPDIR
% local_cluster.JobStorageLocation = getenv('SLURM_TMPDIR')
% 
% % Start the parallel pool
% parpool(local_cluster);

disp(jobid);
disp(class(jobid));