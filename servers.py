from fabric.api import *
env.hosts = [server for server in open("../ipy-scripting/servers.csv").readlines()]
env.user = "root"
env.password = "Reuters1"
env.abort_on_prompts = True
env.skip_bad_hosts = True

def get_free_memory():
    run("hostname")
    run("free -m")
execute(get_free_memory)
