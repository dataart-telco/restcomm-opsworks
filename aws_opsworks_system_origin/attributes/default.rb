default["aws_opsworks_system"]["packages"]["download_base_url"] = "https://opscode-omnibus-packages.s3.amazonaws.com"
default["aws_opsworks_system"]["packages"]["chef_version"] = "12.7.2"

default["aws_opsworks_system"]["cleanup"]["keep_logs"] = 10
default["aws_opsworks_system"]["cleanup"]["log_dir"] = "/var/lib/aws/opsworks/chef/"
default["aws_opsworks_system"]["cleanup"]["customer_run_dir"] = "/var/chef/runs/"

default["opsworks"]["run_cookbook_tests"] = false

default["aws_opsworks_system"]["swapfile_name"] = "/var/swapfile"

default["aws_opsworks_system"]["yum_dump_file"] = File.join(Chef::CHEF_ROOT, "chef", "provider", "package", "yum-dump.py")
default["aws_opsworks_system"]["yum_dump_lock_timeout"] = 120
default["aws_opsworks_system"]["ohai_ec2_hints_file"] = "/etc/chef/ohai/hints/ec2.json"
