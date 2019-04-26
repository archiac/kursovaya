package shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
