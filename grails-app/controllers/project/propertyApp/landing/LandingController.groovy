package project.propertyApp.landing

import grails.plugin.springsecurity.annotation.Secured
import project.propertyApp.person.Person

@Secured('permitAll')
class LandingController {
    def springSecurityService

    def index() {
        render(view: "demo")
    }

    def login() {

    }

    def demo() {

    }

    def checkPage() {

    }

    def home() {
        flash.home="All properties posted"
    }


    def renderImage() {
        Person person=(springSecurityService.currentUser)
        def file = new File(person.photoLocation)
        def img = file.bytes
        showImage(img)
    }

    def homeImage() {
        def file = new File("/home/ashish/Desktop/mumbai-coastline.jpg")
        def img = file.bytes
        showImage(img)

    }

    def propertyImage() {
        def file = new File(params.photoLocation)
        def img = file.bytes
        showImage(img)
    }

    def showImage(def img) {
        response.contentType='image/*' // or the appropriate image content type
        response.outputStream << img
        response.outputStream.flush()
    }


}
