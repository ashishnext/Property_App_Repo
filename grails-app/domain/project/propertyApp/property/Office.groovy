package project.propertyApp.property

import project.propertyApp.enums.Enums

class Office extends Property {
    Boolean parkingFacility
    Enums.OfficeType officeType

    static constraints = {
    }

    static List<Office> newOfficePosted() {
        def c=Office.createCriteria()
        List<Office> results=c.list() {
            order("dateCreated", "desc")
        }
        return results
    }
}
