
pipeline {
   agent any
   tools {
        maven 'maven 3.5.4'
    }
   stages{
   stage('Clone Repository') {
      steps{
        git url: 'https://github.com/ayoub1/spring-petclinic-rest.git'
      }
   }
   stage(' Maven Build') {
      steps{
      sh 'mvn clean package'
      }
   }
   stage('Build image') {
        steps{
    def app =  docker.build("ayouboss/petclinic-deploy")
             docker.withRegistry('http://localhost:50000') {
       app.push("latest")
      }
    }  
      

 }
      
   /**
   stage('Run Maven Container') {
       
        //Remove maven-build-container if it exisits
        sh " docker rm -f maven-build-container"
        
        //Run maven image
        sh "docker run --rm --name maven-build-container maven-build"
   }
   
   stage('Deploy Spring Boot Application') {
        
         //Remove maven-build-container if it exisits
        sh " docker rm -f java-deploy-container"
       
        sh "docker run --name java-deploy-container --volumes-from maven-build-container -d -p 8090:8080 ayouboss/petclinic-deploy"
   }
*/
   }
}
