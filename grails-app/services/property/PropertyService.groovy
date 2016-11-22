package property

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import project.propertyApp.cmdObjs.HouseCO
import project.propertyApp.cmdObjs.OfficeCO
import project.propertyApp.person.Person
import project.propertyApp.property.Amenities
import project.propertyApp.property.House
import project.propertyApp.property.Office
import project.propertyApp.property.Property

@Transactional
class PropertyService {
    def springSecurityService

    def serviceMethod() {

    }

    String getPhotoLocation(def file) {
        println("getPhotoLocation/getPhotoLocation")
        String path = "/home/ashish/newProj/propertyPhoto/"
        String fileName = file.getOriginalFilename()

        if (!file.isEmpty()) {
            file.transferTo(new File(path + fileName))
        }
        return path + fileName
    }

    def saveHouseMethod(HouseCO co, def file) {
        println(co.properties)
        if (co.validate()) {
            String photoLocation = getPhotoLocation(file)
            Person person = springSecurityService.currentUser
            println("Person ${person}")

            House house = new House(
                    location: co.location, address: co.address, pincode: co.pincode, rooms: co.rooms, area: co.area,
                    price: co.price, propertyFor: co.propertyFor, person: person, photoLocation: photoLocation,
                    furnished: co.furnished, numOfBalconies: co.numOfBalconies, phoneNum: co.phoneNum,
                    possession: co.possession, houseType: co.houseType
            ).save(failOnError: true, flush: true)

            println("---------------------1-------------")


            Amenities amenities = new Amenities(lift: co.lift, waterStorage: co.waterStorage,
                     atm: co.atm, conferenceRoom: co.conferenceRoom, gym: co.gym)

            house.addToAmenities(amenities).save(flush: true, failOnError: true)

//            println(co.lift)
//            amenities.lift = co.lift
//            amenities.waterStorage = co.waterStorage
//            amenities.atm = co.atm
//            amenities.conferenceRoom = co.conferenceRoom
//            amenities.gym = co.gym
//            amenities.property= house


            println("-------------------2-----------------")
//
//            if (amenities.validate()) {
//                println("after validateeeeeeeeee")
//                amenities.save()
//            }
//            else {
//                println("errorrrrrrrrrr")
//                amenities.errors.allErrors.each {
//                    println it
//                }
//            }

//            println("-------------------3-----------------")
//            house.amenities=amenities
//            amenities.save(flush: true, failOnError: true)


            person.addToProps(house).save(failOnError: true, flush: true)
            return true
        } else {
            return false
        }
    }

    def saveOfficeMethod(OfficeCO co, MultipartFile file) {
        if (co.validate()) {
            String photoLocation = getPhotoLocation(file)

            Person person = springSecurityService.currentUser

            Amenities amenities = new Amenities()
            amenities.lift = co.lift
            amenities.waterStorage = co.waterStorage
            amenities.atm = co.atm
            amenities.conferenceRoom = co.conferenceRoom
            amenities.gym = co.gym

            if (amenities.validate()) {
                amenities.save()
            } else {
                amenities.errors.allErrors.each {
                    println it
                }
            }

            amenities.save(flush: true, failOnError: true)

            Office office = new Office(location: co.location, address: co.address, pincode: co.pincode, parkingFacility: co.parkingFacility, area: co.area,
                    price: co.price, propertyFor: co.propertyFor, person: person, photoLocation: photoLocation, phoneNum: co.phoneNum,
                    possession: co.possession, officeType: co.officeType, amenities: amenities)

       //     amenities.property=office


            person.addToProps(office).save(failOnError: true, flush: true)

            return true
        } else {
            return false
        }
    }


    def updateHouseMethod(HouseCO houseCO, Long houseId, MultipartFile file) {

        if (houseCO.validate()) {

            String photoLocation = getPhotoLocation(file)
            House house = House.findById(houseId)

            house.rooms = houseCO.rooms
            house.address = houseCO.address
            house.location = houseCO.location
            house.pincode = houseCO.pincode
            house.area = houseCO.area
            house.price = houseCO.price
            house.photoLocation= photoLocation
            house.propertyFor = houseCO.propertyFor
            house.furnished = houseCO.furnished
            house.numOfBalconies = houseCO.numOfBalconies
            house.phoneNum = houseCO.phoneNum
            house.possession = houseCO.possession
            house.houseType = houseCO.houseType
            //    house.amenities = houseCO.amenities

            Amenities amenities = Amenities.findById(house.amenities.id)
            amenities.lift = houseCO.lift
            amenities.waterStorage = houseCO.waterStorage
            amenities.conferenceRoom = houseCO.conferenceRoom
            amenities.atm = houseCO.atm
            amenities.gym = houseCO.gym

            house.amenities = amenities

            house.save(failOnError: true, flush: true)

            return true
        } else {
            return false
        }
    }

    def updateOfficeMethod(OfficeCO officeCO, Long officeId, MultipartFile file) {

        if (officeCO.validate()) {

            String photoLocation = getPhotoLocation(file)

            Office office = Office.findById(officeId)
            office.parkingFacility = officeCO.parkingFacility
            office.address = officeCO.address
            office.location = officeCO.location
            office.pincode = officeCO.pincode
            office.area = officeCO.area
            office.price = officeCO.price
            office.photoLocation= photoLocation
            office.propertyFor = officeCO.propertyFor
            office.phoneNum = officeCO.phoneNum
            office.possession = officeCO.possession
            office.officeType = officeCO.officeType
            //     office.amenities = officeCO.amenities

            Amenities amenities = Amenities.findById(office.amenities.id)
            amenities.lift = officeCO.lift
            amenities.waterStorage = officeCO.waterStorage
            amenities.conferenceRoom = officeCO.conferenceRoom
            amenities.atm = officeCO.atm
            amenities.gym = officeCO.gym

            office.amenities = amenities

            office.save(failOnError: true, flush: true)
            return true
        } else {
            return false
        }

    }
}
