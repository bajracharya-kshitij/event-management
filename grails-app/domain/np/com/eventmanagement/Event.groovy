package np.com.eventmanagement

class Event {

    String name
    Date fromDate
    Date toDate
    String location

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, blank: false
        fromDate nullable: false, validator: dateValidator
        toDate nullable: false, validator: dateValidator
        location nullable: true
    }

    static def dateValidator = { value, object ->
        object.fromDate.before(object.toDate)
    }
}
