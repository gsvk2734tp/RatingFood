package ru.golyshkin.rankingFeed.web.feed;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import ru.golyshkin.rankingFeed.model.Feed;
import ru.golyshkin.rankingFeed.service.FeedService;

import java.util.List;

import static ru.golyshkin.rankingFeed.util.ValidatorUtil.assureIdConsistent;
import static ru.golyshkin.rankingFeed.util.ValidatorUtil.checkNew;

public class AbstractFeedController {
    private final Logger log = LoggerFactory.getLogger(getClass());
    private final int userId = 100000;

    @Autowired
    private FeedService service;

    public Feed get(int id) {
        log.info("get feed {} for {}", id, userId);
        return service.get(id, userId);
    }

    public void delete(int id) {
        log.info("delete feed {} for {}", id, userId);
        service.delete(id, userId);
    }

    public List<Feed> getAll() {
        log.info("getAll for user {}", userId);
        return service.getAll(userId);
    }

    public Feed create(Feed feed) {
        checkNew(feed);
        return service.create(feed, userId);
    }

    public void update(Feed feed, int id) {
        assureIdConsistent(feed, id);
        log.info("update feed {} for user {}", feed, userId);
        service.update(feed, userId);
    }

    public List<Feed> fingByRanking(int ranking) {
        log.info("getAll Sorted By {}", ranking);
        return service.findByRanking(ranking, userId);
    }


}
