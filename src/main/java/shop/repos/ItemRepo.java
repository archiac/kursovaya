package shop.repos;

import org.springframework.data.repository.CrudRepository;
import shop.entity.Item;

import java.util.List;

public interface ItemRepo extends CrudRepository<Item,Long> {
    List<Item> findByName(String name);
    List<Item> findByNameContains(String name);
}
