package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import shop.entity.Item;
import shop.entity.ItemType;
import shop.repos.ItemRepo;
import shop.service.ItemService;

import java.util.Collections;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private ItemService itemService;
    @Autowired
    private ItemRepo itemRepo;

    @GetMapping
    public String itemList( Map<String,Object> model){
        Iterable<Item> items=itemService.loadAllItems();
        model.put("items",items);
        return "itemList";
    }

    @GetMapping("{item}")
    public String userEditForm(@PathVariable Item item, Model model) {
        model.addAttribute("item", item);
        return "itemEdi";
    }

    @PostMapping("delItem")
    public String delete(@RequestParam("id") Item item, Map<String, Object> model){
        itemService.deleteItem(item);

        Iterable<Item> items = itemService.loadAllItems();
        model.put("items", items);

        return "itemList";
    }

    @GetMapping("addPhone")
    public String phone(){
        return "itemAddPhone";
    }

    @GetMapping("addLaptop")
    public String laptop(){
        return "itemAddLaptop";
    }



    @PostMapping("itemAddPhone")
    public String addPhone(@RequestParam String name, @RequestParam String description,
                           @RequestParam double price, @RequestParam int qty,
                           @RequestParam String options, @RequestParam boolean isexist,
                           Map<String,Object> model){

        Item item = new Item(name, description, price, isexist, qty, options, Collections.singleton(ItemType.PHONE));
        itemRepo.save(item);

        return "redirect:/item";
    }

    @PostMapping("itemAddLaptop")
    public String addLaptop(@RequestParam String name, @RequestParam String description,
                           @RequestParam double price, @RequestParam int qty,
                           @RequestParam String options, @RequestParam boolean isexist,
                           Map<String,Object> model){

        Item item = new Item(name, description, price, isexist, qty, options, Collections.singleton(ItemType.LAPTOP));
        itemRepo.save(item);

        return "redirect:/item";
    }

    @PostMapping("filter")
    public String filter(@RequestParam ("filter") String filter, Map<String, Object> model){
        Iterable<Item> items=itemRepo.findByName(filter);
        model.put("items",items);
        return "itemList";
    }
}
