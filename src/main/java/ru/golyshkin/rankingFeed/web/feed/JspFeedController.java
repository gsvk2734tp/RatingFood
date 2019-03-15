package ru.golyshkin.rankingFeed.web.feed;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.golyshkin.rankingFeed.model.Feed;

import javax.servlet.http.HttpServletRequest;
import java.util.Objects;


@Controller
@RequestMapping(value = "beersPage")
public class JspFeedController extends AbstractFeedController {

    @GetMapping()
    public String beers(Model model) {
        model.addAttribute("beers", super.getAll());
        return "beersPage";
    }

    @GetMapping("/delete/{id}")
    public String deleteMeal(@PathVariable("id") int id) {
        super.delete(id);
        return "redirect:/beersPage";
    }

    @GetMapping("/update")
    public String update(@RequestParam(value = "id") int id, Model model) {
        model.addAttribute("beer", super.get(id));
        return "beersPage";
    }

    @GetMapping("/create")
    public String create(Model model) {
        Feed feed = new Feed();
        model.addAttribute("beer", feed);
        return "beersPage";
    }

    @PostMapping("/add")
    public String addOrUpdate(HttpServletRequest request) {
        Feed feed = new Feed(request.getParameter("name"),
                request.getParameter("description"),
                Integer.parseInt(request.getParameter("price")),
                3, "12123");

        if (request.getParameter("id").isEmpty()) {
            super.create(feed);
        } else {
            super.update(feed, getId(request));

        }
        return "redirect:/beersPage";
    }

        private int getId(HttpServletRequest request) {
        String paramId = Objects.requireNonNull(request.getParameter("id"));
        return Integer.parseInt(paramId);
    }

}
