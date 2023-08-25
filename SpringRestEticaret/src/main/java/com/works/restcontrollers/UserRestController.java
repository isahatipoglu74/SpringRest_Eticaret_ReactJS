package com.works.restcontrollers;

import com.works.models.Admin;
import com.works.models.User;
import com.works.services.AdminService;
import com.works.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserRestController {

    final UserService userService;

    // Bu metot, kullanıcıdan gelen email ve password bilgilerini alır ve adminsService ile karşılaştırır.
// Eğer eşleşme varsa, true döner. Yoksa, false döner.
    @PostMapping("/login")
    public ResponseEntity<User> login(@RequestBody User user) {
        return userService.login(user);
    }
    @PostMapping("/register")
    public ResponseEntity<User> register(@RequestBody User user) {
        return userService.register(user);
    }

}
