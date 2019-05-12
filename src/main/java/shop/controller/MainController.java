package shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import shop.entity.Item;
import shop.service.ItemService;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private ItemService itemService;

   @GetMapping("/")
    public String hello(Map<String,Object> model) {
       Iterable<Item> items=itemService.loadAllItems();
       model.put("items",items);
        return "main";
    }

    @RequestMapping("/login")
    public String getLogin(@RequestParam(value = "error", required = false) String error,
                           @RequestParam(value = "logout", required = false) String logout,
                           Model model) {
        model.addAttribute("error", error != null);
        model.addAttribute("logout", logout != null);
        return "login";
    }

    @GetMapping("/main")

    public String me(Map<String,Object> model){
        Iterable<Item> items=itemService.loadAllItems();
        model.put("items",items);
        return "main";
    }
}