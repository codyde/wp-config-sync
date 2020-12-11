project = "KubeCon Demo"

app "config" {

  config {
    env = {
        THEME = configdynamic("kubernetes", {
        name = "theme"
        key = "tone"
      })
    }
  }

  build {
    use "pack" {}
    registry {
        use "docker" {
          image = "codydearkland/wpmini"
          tag = gitrefpretty()
        }
    }
 }

  deploy { 
    use "kubernetes" {
      service_port=5000
    }
  }

  release {
    use "kubernetes" {
      load_balancer=true
      port=80
    }
  }
}
