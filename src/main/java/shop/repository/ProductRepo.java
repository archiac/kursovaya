package shop.repository;

import org.springframework.data.repository.CrudRepository;
import shop.domain.Product;

public interface ProductRepo extends CrudRepository<Product, Integer> {
}
