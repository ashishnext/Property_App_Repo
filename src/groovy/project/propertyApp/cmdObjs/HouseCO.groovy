package project.propertyApp.cmdObjs

import grails.validation.Validateable
import project.propertyApp.enums.Enums

@Validateable
class HouseCO {

    String location
    String address
    String pincode
    Integer area
    Long price
    Enums.PropertyFor propertyFor
    String rooms
    Long id
    byte[] housePhoto
    Boolean furnished
    Integer numOfBalconies
    String phoneNum
    Enums.Possession possession
    Enums.HouseType houseType
  //  String amenities

    Boolean lift
    Boolean waterStorage
    Boolean atm
    Boolean conferenceRoom
    Boolean gym


    static constraints= {
        pincode size: 1..6
        id nullable: true
        housePhoto nullable: true
        phoneNum size: 1..10
//        lift nullable: true, bindable: true
//        waterStorage nullable: true, bindable: true
//        atm nullable: true, bindable: true
//        conferenceRoom nullable: true, bindable: true
//        gym nullable: true, bindable: true

    }

}
