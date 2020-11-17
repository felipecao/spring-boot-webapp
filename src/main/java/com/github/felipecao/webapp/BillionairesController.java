package com.github.felipecao.webapp;

import com.github.felipecao.dependency.MenuItem;
import com.github.felipecao.dependency.MenuItemRepository;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BillionairesController {

    private BillionaireRepository billionaireRepository;
    private MenuItemRepository menuItemRepository;

    public BillionairesController(BillionaireRepository billionaireRepository,
                                  MenuItemRepository menuItemRepository) {
        this.billionaireRepository = billionaireRepository;
        this.menuItemRepository = menuItemRepository;
    }

    @GetMapping("/billionaires")
    public ResponseEntity<List<Billionaire>> findAllBillionaires() {
        return ResponseEntity.ok().body(billionaireRepository.findAll());
    }

    @GetMapping("/menu-items")
    public ResponseEntity<List<MenuItem>> findAllMenuItems() {
        return ResponseEntity.ok().body(menuItemRepository.findAll());
    }
}
