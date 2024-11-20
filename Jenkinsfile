@Library('deployment')
import org.example.util.Helper

pipeline {
    agent any

    stages {
        stage('Usar función de la librería') {
            steps {
                script {
                    // Llamar a la función definida en vars/miPaso.groovy
                    miPaso('¡Hola desde la librería compartida!')
                }
            }
        }
        stage('Usar clase de src/') {
            steps {
                script {
                    // Llamar a la clase Helper definida en src/org/example/util/Helper.groovy
                    def saludo = Helper.saludar('Mundo Jenkins')
                    echo saludo
                }
            }
        }
    }
}
