package project.propertyApp.person

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest
import project.propertyApp.cmdObjs.RegistrationCO

@Secured('permitAll')
class PersonController {
    def springSecurityService
    def personService

    def index() {}

    def registration(RegistrationCO registrationCO) {
        MultipartHttpServletRequest mpr=(MultipartHttpServletRequest)request
        def file=mpr.getFile('photo')

        if (registrationCO.validate()) {
            personService.registrationMethod(registrationCO, file)
            springSecurityService.reauthenticate(registrationCO.username)
//            render(view: "/landing/home")
            redirect(controller: "landing", action: "home")
        }
        else {
            registrationCO.errors.each {println(it)}
            render(view: "/landing/login", model: [registrationCO:registrationCO])
        }

    }
}
