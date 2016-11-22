package project.propertyApp.cmdObjs

import grails.validation.Validateable
import project.propertyApp.enums.Enums

@Validateable
class OfficeCO {

    String location
    String address
    String pincode
    Long area
    Long price
    Enums.PropertyFor propertyFor
    String parkingFacility
    Long id
    byte[] officePhoto
    String phoneNum
    Enums.Possession possession
    Enums.OfficeType officeType
   // String amenities
    Boolean lift
    Boolean waterStorage
    Boolean atm
    Boolean conferenceRoom
    Boolean gym

  //  Boolean lift, waterStorage, atm, conferenceRoom, gym

    static constraints= {
        id nullable: true
        pincode size: 1..6
        officePhoto nullable: true
        phoneNum size: 1..10
    }
}
