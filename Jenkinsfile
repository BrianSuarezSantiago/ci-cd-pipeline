@Library('deployment') _

pipeline {
    agent any
    // ! incluir las opciones de timeout e historial

    environment {
        REPOSITORY_URL = 'https://github.com/BrianSuarezSantiago/java-app.git'
        FOLDER_NAME = 'java-app' // '' Placeholder, will be completed dynamically
    }

    stages {
        stage('Prepare Stage') {
            steps {
                script {
                    echo "Building ${config.projectName}"
                    GroovyLibrary.prepareStage()
                }
            }
        }

        stage('Build Stage') {
            steps {
                script {
                    print("build")
                    //mavenBuildStage()
                    //npmBuildStage()
                }
            }
        }

        stage('Package Stage') {
            steps {
                script {
                    print("package")
                }
            }
        }

        stage('Deploy Stage') {
            steps {
                script {
                    print("deploy")
                }
            }
        }
    }
}
