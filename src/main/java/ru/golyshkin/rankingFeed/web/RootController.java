package ru.golyshkin.rankingFeed.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.golyshkin.rankingFeed.service.UserService;

@Controller
public class RootController {

    @Autowired
    private UserService service;

    @GetMapping("/")
    public String root() {
        return "index";
    }

    @GetMapping(value = "/users")
    public String login() {
        return "users";
    }

    @GetMapping(value = "/feeds")
    public String feeds() {
        return "feeds";
    }

    @PostMapping(value = "/feeds")
    public String feedsPost() {
        return "feeds";
    }
}
