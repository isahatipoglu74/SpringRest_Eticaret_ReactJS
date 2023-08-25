package com.works.services;

import com.works.models.Admin;
import com.works.repositories.AdminRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AdminService {

    final HttpServletRequest req;
    final AdminRepository adminRepository;

    // Bu metot, veritabanından email ve password bilgilerine göre kullanıcıyı bulur.
    // Eğer bulursa, true döner ve kullanıcıyı session'a kaydeder. Yoksa, false döner.
    public ResponseEntity<Admin> login(Admin admin) {
        Optional<Admin> optionalAdmin = adminRepository.findByEmailEqualsIgnoreCaseAndPasswordEquals(admin.getEmail(), admin.getPassword());
        if (optionalAdmin.isPresent()) {
            req.getSession().setAttribute("admin", optionalAdmin.get().getEmail());
            return ResponseEntity.ok(optionalAdmin.get()); // 200 OK durum kodu ve kullanıcı verileri ile cevap döndür
        } else {
            return ResponseEntity.badRequest().build(); // 400 Bad Request durum kodu ile boş bir cevap döndür
        }
    }



   /* public boolean logins(Admins admins){

           Optional<Admins> optionalAdmins= adminsRepository.findByEmailEqualsIgnoreCaseAndPasswordEquals(admins.getEmail(), admins.getPassword());
      if(optionalAdmins.isPresent()){
          return true;
      }
        return false;
    }*/
}
