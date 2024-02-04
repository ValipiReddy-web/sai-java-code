pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                 
                    sh 'mvn clean compile'
                 
            }
        }
        stage('Load user Jenkinsfile') {
            agent any
            steps {
                load 'Jenkinsfile'
            }
        }

        stage ('Testing Stage') {

            steps {
                 
                    sh 'mvn test'
                 
            }
        }


        stage ('Deployment Stage') {
            steps {
                 
                    sh 'mvn install'
                 
            }
        }
    }
}
