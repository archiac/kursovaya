package shop.repos;

import shop.entity.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends CrudRepository<User, Long> {
    User findByUsername(String username);
    List<User> findByActive(boolean active);
}
