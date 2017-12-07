import np.com.eventmanagement.User
import np.com.eventmanagement.Role
import np.com.eventmanagement.UserRole

class BootStrap {

    def init = { servletContext ->
        User user = new User(username: 'admin', password: 'admin').save()
        Role role = new Role(authority: 'USER_ROLE').save()
        new UserRole(user, role).save()
    }
    def destroy = {
    }
}
