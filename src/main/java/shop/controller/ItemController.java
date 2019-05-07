package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import shop.entity.Item;
import shop.service.ItemService;

import java.util.Map;

@Controller
@RequestMapping("/item")
public class ItemController {

    @Autowired
    private ItemService itemService;

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
}
