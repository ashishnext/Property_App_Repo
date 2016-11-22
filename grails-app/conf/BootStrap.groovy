import com.Role
import com.User
import com.UserRole
import project.propertyApp.person.Person

class BootStrap {

    def init = { servletContext ->

        Role roleAdmin= Role.findByAuthority("ROLE_ADMIN")?: new Role(authority: "ROLE_ADMIN").save(failOnError: true, flush: true)
        Role roleOwner= Role.findByAuthority("ROLE_OWNER")?: new Role(authority: "ROLE_OWNER").save(failOnError: true, flush: true)
        Role roleAgent= Role.findByAuthority("ROLE_AGENT")?: new Role(authority: "ROLE_AGENT").save(failOnError: true, flush: true)
        Role roleCustomer= Role.findByAuthority("ROLE_CUSTOMER")?: new Role(authority: "ROLE_CUSTOMER").save(failOnError: true, flush: true)

        Person userAdmin= Person.findByUsername("admin@nexthoughts.com")?: new Person(username: "admin@nexthoughts.com",
                            password: "admindefault", name: "Admin", age: "23", enabled: true, photoLocation: "/home/ashish/Desktop/random.png").save(failOnError: true, flush: true)
        if (!userAdmin.authorities.contains(roleAdmin)) {
            UserRole.create(userAdmin, roleAdmin, true)
        }

        Person userOwner= Person.findByUsername("owner@nexthoughts.com")?: new Person(username: "owner@nexthoughts.com",
                password: "ownerdefault", name: "Owner", age: "40", enabled: true, photoLocation: "/home/ashish/Desktop/random.png").save(failOnError: true, flush: true)
        if (!userOwner.authorities.contains(roleOwner)) {
            UserRole.create(userOwner, roleOwner, true)
        }

        Person userAgent= Person.findByUsername("agent@nexthoughts.com")?: new Person(username: "agent@nexthoughts.com",
                password: "agentdefault", name: "Agent", age: "30", enabled: true, photoLocation: "/home/ashish/Desktop/random.png").save(failOnError: true, flush: true)
        if (!userAgent.authorities.contains(roleAgent)) {
            UserRole.create(userAgent, roleAgent, true)
        }

        Person userCustomer= Person.findByUsername("customer@nexthoughts.com")?: new Person(username: "customer@nexthoughts.com",
                password: "customerdefault", name: "Customer", age: "28", enabled: true, photoLocation: "/home/ashish/Desktop/random2.jpg").save(failOnError: true, flush: true)
        if (!userCustomer.authorities.contains(roleCustomer)) {
            UserRole.create(userCustomer, roleCustomer, true)
        }


    }
    def destroy = {
    }
}
