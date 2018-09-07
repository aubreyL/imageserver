node('default') {

    stage('Build Binary') {
    try {
      checkout scm
      sh 'build.sh'
    } 
  }
/*  stage('Build Binary') {
    try {
      withCredentials([file(credentialsId: 'bypass-cicd-sshkey', variable: 'SSHKEY')]) {
        sh 'sudo cp -u ${SSHKEY} /var/jenkins_home/.ssh/id_rsa'
        sh 'sudo chmod go-rwx /var/jenkins_home/.ssh/id_rsa && sudo chown jenkins: /var/jenkins_home/.ssh/id_rsa'
      }
      checkout scm
      sh 'ci/build.sh'
    } 
  }
  stage('Build Docker') {
    try {
      withCredentials([file(credentialsId: 'docker-hub-registry-config', variable: 'DOCKERCFG')]) {
        sh 'cp -u ${DOCKERCFG} /var/jenkins_home/.dockercfg'
        sh 'chmod 600 /var/jenkins_home/.dockercfg'
      }
      withEnv(["JENKINS_BUILDNO=${env.BUILD_NUMBER}"]) {
        sh 'ci/docker-build.sh'
      }
    }
  }*/
}
