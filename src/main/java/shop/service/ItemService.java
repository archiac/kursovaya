package shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import shop.entity.Item;
import shop.repos.ItemRepo;

@Service
public class ItemService {

    @Autowired
    private ItemRepo itemRepo;

    @Transactional
    public Iterable<Item> loadAllItems(){
        return itemRepo.findAll();
    }


    @Transactional
    public void deleteItem(Item item){
        itemRepo.delete(item);
    }
}
