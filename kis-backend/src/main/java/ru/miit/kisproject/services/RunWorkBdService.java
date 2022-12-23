package ru.miit.kisproject.services;

import ru.miit.kisproject.mapper.SysOptionsMapper;
import ru.miit.kisproject.model.DataStorage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import ru.miit.kisproject.model.SysOptions;

import java.util.List;


@Service
public class RunWorkBdService {

    @Autowired
    SysOptionsMapper sysOptionsMapper;

    @Autowired
    DataStorage dataStorage;

    @Scheduled(fixedDelay = 10 * 24 * 60 * 60000)
    void run() {
        List<SysOptions> sysOptionsList = sysOptionsMapper.selectAll();
        dataStorage.getSysOptions().addAll(sysOptionsList);
    }
}
