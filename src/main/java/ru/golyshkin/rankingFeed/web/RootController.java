package ru.golyshkin.rankingFeed.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String root() {
        return "index";
    }

    @GetMapping("/index")
    public String home() {
        return "index";
    }

    @PostMapping(value = "/users")
    public String login() {
        return "users";
    }

    @PostMapping(value = "/MainPage")
    public String MainPage() {
        return "MainPage";
    }
}
