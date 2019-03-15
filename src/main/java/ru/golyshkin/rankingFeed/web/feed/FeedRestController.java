package ru.golyshkin.rankingFeed.web.feed;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.golyshkin.rankingFeed.model.Feed;

@RestController
@RequestMapping(value = FeedRestController.REST_URL, produces = MediaType.APPLICATION_JSON_VALUE)
public class FeedRestController extends AbstractFeedController {
    static final String REST_URL = "/rest/beers";

    @Override
    @GetMapping("/{id}")
    public Feed get(@PathVariable("id") int id) {
        return super.get(id);
    }
}
