node ("docker"){

    stage("Hello") {
        echo "Hello World"
    }

    stage("Clone"){
        git branch: "master", url: "https://github.com/codebangkok/jenkins"
    }

    stage("Build go"){
        sh "go build src/goapp/main.go"
    }
    
    stage("Test go"){
        sh "go test src/goapp/main.go"
    }

    stage("Build docker"){
        sh "docker image build -t codebangkok/goapp src/goapp"
    }

    //stage("Push"){
    //    sh """
    //        docker login -u psakulpakdee@gmail.com -p SpidamonkEE20 
    //        docker image push codebangkok/goapp
    //    """
    //}
}