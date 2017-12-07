package np.com.eventmanagement

class Request {

    String name
    Event event

    static constraints = {
        name nullable: false, blank: false
    }
}
