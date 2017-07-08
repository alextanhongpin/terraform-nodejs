provider "heroku" {
    email = "alextan220990@gmail.com"
    api_key = "${var.heroku_api_key}"
}

# Create a new Heroku app
resource "heroku_app" "default" {
    name = "terraform-sample"
    region = "us"

    config_vars {
        SAMPLE_ENV = "sample environment for heroku" 
    }

    buildpacks = [
        "heroku/nodejs"
    ]
}

variable "heroku_api_key" {
    description = "Example api key for heroku"
}