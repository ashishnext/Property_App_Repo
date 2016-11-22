package project.propertyApp.property

import project.propertyApp.enums.Enums

class House extends Property{
    String rooms
    Boolean furnished
    Integer numOfBalconies
    Enums.HouseType houseType



    static constraints = {

    }

    static List<House> newHousePosted() {
        def c = House.createCriteria()
        List<House> results=c.list() {
            order("dateCreated", "desc")
        }
        return results
    }
}
