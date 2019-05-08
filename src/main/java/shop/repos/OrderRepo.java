package shop.repos;

import org.springframework.data.repository.CrudRepository;
import shop.entity.Order;

public interface OrderRepo extends CrudRepository<Order,Long> {

}
