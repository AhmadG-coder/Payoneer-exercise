@nonCPS
def get_last_successful_build(){
    return Jenkins.instance.getItem(env.JOB_NAME).lastSuccessfulBuild
}