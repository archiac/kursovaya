package shop.repos;

import org.springframework.data.repository.CrudRepository;
import shop.entity.Order;

import java.util.List;

public interface OrderRepo extends CrudRepository<Order,Long> {
    List<Order> findByActive(boolean active);
}
