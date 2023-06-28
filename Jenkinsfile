pipeline { 
  agent any 
  environment { 
      repository = "hojun121"  //docker hub id와 repository 이름
      DOCKERHUB_CREDENTIALS = credentials('hojun121-dockerhub') // jenkins에 등록해 놓은 docker hub credentials 이름
      dockerImage = '' 
  }
  stages { 
      stage ('git clone') {
          git branch: 'feature/dockerfile_practice', credentialsId: 'hojun121-git', url: 'https://github.com/hojun121/k8s-cka.git'
      }
  
      stage ('docker build') {
           sh ' docker build --tag hojun121 .'
      }
      stage('docker login'){
          steps{
              sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin' // docker hub 로그인
          }
      }
      stage('push image') { 
          steps { 
              script {
                sh 'docker push $repository:$BUILD_NUMBER' //docker push
              } 
          }
      } 
      stage('Cleaning up') { 
  		  steps { 
                sh "docker rmi $repository:$BUILD_NUMBER" // docker image 제거
            } 
      }
     stage('argocd git clone and push') { 
  		  steps {  
              script {
                // sed image tag
                // git commit
                // git push
              }   
        } 
      }
}
    
