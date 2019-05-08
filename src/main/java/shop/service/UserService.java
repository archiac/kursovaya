package shop.service;

import shop.entity.User;
import shop.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepo.findByUsername(username);
    }

    @Transactional
    public Iterable<User> loadAllUsers(){
        return userRepo.findAll();
    }

    @Transactional
    public User saveUsers(User user){
        return userRepo.save(user);
    }

    @Transactional
    public void deleteUser(User user){
        userRepo.delete(user);
    }

    @Transactional
    public List<User> loadUserByActive(boolean active){
        return  userRepo.findByActive(active);
    }

}
