package ru.golyshkin.rankingFeed.web.feed;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.golyshkin.rankingFeed.model.Feed;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.IOException;
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

    @PostMapping("/edit")
    public String editFeed(@RequestParam("id") Integer id,
                           @RequestParam("name") String name,
                           @RequestParam("description") String description,
                           @RequestParam("price") String price,
                           @RequestParam("ranking") String ranking,
                           @RequestParam("photoUrl") String photoUrl) {
        Feed feed = new Feed(name, description, Integer.parseInt(price), Integer.parseInt(ranking), photoUrl);
        super.update(feed, id);
        return "redirect:/beersPage";
    }

    @PostMapping("/upload")
    public String addBeer(
            @RequestParam("name") String name,
            @RequestParam("description") String description,
            @RequestParam("price") String price,
            @RequestParam("ranking") String ranking,
            @RequestParam("filePhoto") MultipartFile file) throws IOException, InterruptedException {
        String fileName = file.getOriginalFilename();
        Feed feed = new Feed(name, description, Integer.parseInt(price), Integer.parseInt(ranking), "newTest/" + fileName);

        if (!file.isEmpty()) {
            byte[] bytes = file.getBytes(); // alternatively, file.getInputStream();
            FileOutputStream outputStream = new FileOutputStream("D:/Projects/rankingFeed/src/main/webapp/resources/images/beers/newTest/" + fileName);
            outputStream.write(bytes);
            outputStream.close();
        }
        super.create(feed);
        return "redirect:/beersPage";
    }
}
