package com.github.felipecao.webapp;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface BillionaireRepository extends JpaRepository<Billionaire, Integer> {

    List<Billionaire> findAll();

}
