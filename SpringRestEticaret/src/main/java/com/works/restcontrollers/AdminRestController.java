package com.works.restcontrollers;

import com.works.models.Admin;
import com.works.services.AdminService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminRestController {

    final AdminService adminService;

    // Bu metot, kullanıcıdan gelen email ve password bilgilerini alır ve adminsService ile karşılaştırır.
// Eğer eşleşme varsa, true döner. Yoksa, false döner.
    @PostMapping("/login")
    public ResponseEntity<Admin> logins(@RequestBody Admin admin) {
        return adminService.login(admin);
    }


}
