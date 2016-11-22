package person

import com.Role
import com.UserRole
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile
import project.propertyApp.cmdObjs.RegistrationCO
import project.propertyApp.person.Person

@Transactional
class PersonService {
    def mailService

    def serviceMethod() {

    }

    def registrationMethod(RegistrationCO co, MultipartFile file) {

        String m="/home/ashish/newProj/"
        String  n=file.getOriginalFilename()
        if(!file.isEmpty()) {
            file.transferTo(new File(m+n))
        }

        if (co.role=="Owner") {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age, photoLocation: m+n).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_OWNER"))
        }
        else if  (co.role=="Agent") {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age, photoLocation: m+n).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_AGENT"))
        }
        else {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age, photoLocation: m+n).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_CUSTOMER"))
        }


//            mailService.sendMail()   {
//                    to co.username
//                    subject "Welcome! message  from  LinkShare"
//                    body " hi ${co.name} , you  are  sucessfully Registered.It is  pleasure to you have on board."
//
//
//                }

    }
}
