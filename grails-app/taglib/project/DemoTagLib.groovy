package project

import com.Role
import com.UserRole

class DemoTagLib {
    static defaultEncodeAs = [taglib: 'html']
    static namespace = "demo"
    static encodeAsForTags = [loginLink: [taglib:'none'], houseList: [taglib: 'none'], advBy: [taglib: 'none']]
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def sayHi = {attrs ->
        out << "Hii ${attrs.to}"
    }

    def toUpper= {attrs, body ->
        out << body().toUpperCase()

    }

    def loginLink = {attrs ->
        def lName= attrs.linkName
        out << link(controller: 'landing', action: 'login'){lName}
    }

    def houseList= {attrs ->
        def houses = attrs.houses
        def mb= new groovy.xml.MarkupBuilder(out)

        if (houses) {
            mb.table{
                tr{
                    th{mb.yield "Location"}
                    th{mb.yield "Address"}
                    th{mb.yield "Area(In sqfeet)"}
                    th{mb.yield "Price"}
                    th{mb.yield "Property For"}
                    th{mb.yield "Rooms"}
                    th{mb.yield "Posted By"}
                }
                houses.each{hl ->
                    tr{
                        td{mb.yield "${hl.location}"}
                        td{mb.yield "${hl.address}"}
                        td{mb.yield "${hl.area}"}
                        td{mb.yield "${hl.price}"}
                        td{mb.yield "${hl.propertyFor}"}
                        td{mb.yield "${hl.rooms}"}
                        td{mb.yield "${hl.person.name}"}
                    }

                }
            }
        }
        else {
            "No house property posted"
        }
    }

    def advBy={attrs, body ->
        def person=attrs.person
        UserRole userRole= UserRole.findByUser(person)
        Role role= userRole.role
        String[] s= role.authority.split("_")
        out << body()+ s[1]
    }
}
