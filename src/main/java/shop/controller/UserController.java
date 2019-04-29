package shop.controller;

import shop.entity.User;
import shop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/user")
@PreAuthorize("hasAuthority('ADMIN')")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping
    public String userList(Map<String, Object> model){
        Iterable<User> users = userService.loadAllUsers();
        model.put("users", users);
        return "user";
    }

    @PostMapping("/filter")
    public String filterUser(@RequestParam("filter") String filter, Map<String, Object> model) {
        Iterable<User> users;
        if (filter != null && !filter.isEmpty()) {
            users = userService.loadUserByActive(Boolean.parseBoolean(filter));
        } else {
            users = userService.loadAllUsers();
        }

        model.put("users", users);

        return "user";
    }

    @PostMapping("deleteUser")
    public String delete(@RequestParam("id") User user, Map<String, Object> model){
        userService.deleteUser(user);

        Iterable<User> users = userService.loadAllUsers();
        model.put("users", users);

        return "user";
    }

    @GetMapping("/{user}")
    public String editUser(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        return "editUser";
    }

    @PostMapping("/show")
    public String edit(@RequestParam String fio, @RequestParam boolean active, @RequestParam("id") User user){
        user.setFio(fio);
        user.setActive(active);

        userService.saveUsers(user);

        return "redirect:/user";
    }
}
