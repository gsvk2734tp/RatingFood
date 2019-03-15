package ru.golyshkin.rankingFeed.web.feed;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import ru.golyshkin.rankingFeed.model.Feed;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(value = "/ajax/beersPage")
public class FeedAjaxController extends AbstractFeedController {

    @Override
    @GetMapping(value = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Feed get(@PathVariable("id") int id) {
        return super.get(id);
    }

    @Override
    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Feed> getAll() {
        return super.getAll();
    }

    @Override
    @DeleteMapping("/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void delete(@PathVariable("id") int id) {
        super.delete(id);
    }

    @PostMapping
    public void createOrUpdate(@Valid Feed feed) {
        if (feed.isNew()) {
            super.create(feed);
        } else {
            super.update(feed, feed.getId());
        }
    }

    @Override
    @GetMapping(value = "/filter", produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Feed> fingByRanking(@RequestParam(value = "ranking") int ranking) {
        return super.fingByRanking(ranking);
    }
}
