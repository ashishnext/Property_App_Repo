package project.propertyApp.person

import com.User
import project.propertyApp.property.Property

class Person extends User{
    String name
    String age
    String photoLocation

    static hasMany = [props: Property]


    static constraints = {
        photoLocation  blank: true,nullable: true
    }
}
