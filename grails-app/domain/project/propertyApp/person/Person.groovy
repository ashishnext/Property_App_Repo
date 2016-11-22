package project.propertyApp.person

import com.User
import project.propertyApp.property.PropertyUnit

class Person extends User{
    String name
    String age
    String photoLocation

    static hasMany = [props: PropertyUnit]


    static constraints = {
        photoLocation  blank: true,nullable: true
    }
}
