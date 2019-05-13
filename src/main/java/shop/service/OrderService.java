package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.entity.Order;
import shop.repos.OrderRepo;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private OrderRepo orderRepo;

    @Transactional
     public Iterable<Order> loadAllOrders(){
        return orderRepo.findAll();
    }
    @Transactional
    public List<Order> loadOrderByActive() {
        return  orderRepo.findByActive(true);
    }
}
