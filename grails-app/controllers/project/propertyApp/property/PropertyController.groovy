package project.propertyApp.property

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartHttpServletRequest
import org.springframework.web.multipart.commons.CommonsMultipartFile
import project.propertyApp.cmdObjs.HouseCO
import project.propertyApp.cmdObjs.OfficeCO
import project.propertyApp.enums.Enums
import project.propertyApp.person.Person

@Secured(['ROLE_ADMIN', 'ROLE_OWNER', 'ROLE_AGENT'])
class PropertyController {
    def springSecurityService
    def propertyService

    def index() {}

    def postProperty() {

    }


    def saveHouse(HouseCO houseCO) {
//        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request

        CommonsMultipartFile file = params.photoHouse

        Boolean b = propertyService.saveHouseMethod(houseCO, file)
        if (b) {
            redirect(controller: "landing", action: "home")
        } else {

            houseCO.errors.allErrors.each { println(it) }
            render(view: "postProperty", model: [houseCO: houseCO])
        }

    }

    def saveOffice(OfficeCO officeCO) {
//        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request

        def file = request.getFile('photoOffice')
        Boolean b = propertyService.saveOfficeMethod(officeCO, file)

        if (b) {
            redirect(controller: "landing", action: "home")
        } else {
            officeCO.errors.allErrors.each { println(it) }
            render(view: "postProperty", model: [officeCO: officeCO])
        }

    }

    def myPosts() {
        Person person = springSecurityService.currentUser
        println person.username
        List<House> houseList = House.findAllByPerson(person)
        List<Office> officeList = Office.findAllByPerson(person)
        render(view: "myPosts", model: [houseList: houseList, officeList: officeList])
    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def allRentProperties() {
        def c = House.createCriteria()
        List<House> results = c.list {
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        def c1 = Office.createCriteria()
        List<Office> results1 = c1.list {
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        flash.rent = "All properties for rent"
        render(view: "/landing/home", model: [allRentHouses: results, allRentOffices: results1])
    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def allSaleProperties() {
        def c = House.createCriteria()
        List<House> results = c.list {
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        def c1 = Office.createCriteria()
        List<Office> results1 = c1.list {
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        flash.sale = "All properties for sale"
        render(view: "/landing/home", model: [allSaleHouses: results, allSaleOffices: results1])
    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def search() {

        String[] priceRange = params.price.split("-")
        def c = House.createCriteria()
        List<House> results = c.list() {
            ilike("location", params.searchLocation)
            between("price", priceRange[0] as Long, priceRange[1] as Long)
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        def c1 = Office.createCriteria()
        List<Office> results1 = c1.list() {
            ilike("location", params.searchLocation)
            between("price", priceRange[0] as Long, priceRange[1] as Long)
            eq("propertyFor", params.propertyFor as Enums.PropertyFor)
        }

        flash.search = "Search Result"
        render(view: "/landing/home", model: [houseBySearch: results, officeBySearch: results1])


    }

    @Secured('IS_AUTHENTICATED_ANONYMOUSLY')
    def searchByLocation() {
        def c = House.createCriteria()
        List<House> results = c.list() {
            ilike("location", params.searchLocation)
        }

        def c1 = Office.createCriteria()
        List<Office> results1 = c1.list() {
            ilike("location", params.searchLocation)
        }

        flash.searchLocation = "Search Result"
        render(view: "/landing/home", model: [houseByLocation: results, officeByLocation: results1])
    }

    def editHouse() {
        House house = House.findById(params.houseId as Long)

        render(view: "editHouse", model: [houseObj: house])
    }

    def updateHouse(HouseCO houseCO) {

        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest) request
        def file = mpr.getFile('photoHouse')

        houseCO.id = params.id as Long

        Boolean b = propertyService.updateHouseMethod(houseCO, houseCO.id, file)

        if (b) {

            flash.message = "Your post is updated successfully"
            redirect(action: "myPosts")

        } else {
            houseCO.errors.each { println(it) }
            render(view: "editHouse", model: [houseCO: houseCO])
        }
    }

    def editOffice() {
        Office office = Office.findById(params.officeId as Long)
        render(view: "editOffice", model: [officeObj: office])
    }

    def updateOffice(OfficeCO officeCO) {
        MultipartHttpServletRequest mpr = (MultipartHttpServletRequest)request
        def file = mpr.getFile('photoOffice')

        officeCO.id = params.id as Long

        Boolean b = propertyService.updateOfficeMethod(officeCO, officeCO.id, file)

        if (b) {
            flash.message = "Your post is updated successfully"
            redirect(action: "myPosts")

        } else {
            officeCO.errors.allErrors.each { println(it) }
            render(view: "editOffice", model: [officeCO: officeCO])
        }
    }

    def deleteHouse() {

        House house = House.findById(params.houseId as Long)
        house.delete(flush: true)
        redirect(action: "myPosts")

    }

    def deleteOffice() {

        Office office = Office.findById(params.officeId as Long)
        office.delete(flush: true)
        redirect(action: "myPosts")
    }


}