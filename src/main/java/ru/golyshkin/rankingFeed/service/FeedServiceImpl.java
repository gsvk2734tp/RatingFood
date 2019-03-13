package ru.golyshkin.rankingFeed.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import ru.golyshkin.rankingFeed.model.Feed;
import ru.golyshkin.rankingFeed.repository.FeedRepository;
import ru.golyshkin.rankingFeed.util.exeption.NotFoundException;

import java.util.List;

import static ru.golyshkin.rankingFeed.util.ValidatorUtil.checkNotFoundWithId;

@Service
public class FeedServiceImpl implements FeedService {

    private final FeedRepository repository;

    @Autowired
    public FeedServiceImpl(FeedRepository repository) {
        this.repository = repository;
    }


    @Override
    public Feed create(Feed feed, int userId) {
        Assert.notNull(feed, "feed must not be null");
        return repository.save(feed, userId);
    }

    @Override
    public Feed update(Feed feed, int userId) throws NotFoundException {
        return checkNotFoundWithId(repository.save(feed, userId), feed.getId());
    }

    @Override
    public void delete(int id, int userId) {
        repository.delete(id, userId);
    }

    @Override
    public Feed get(int id, int userId) throws NotFoundException {
        return checkNotFoundWithId(repository.get(id, userId), userId);
    }

    @Override
    public List<Feed> getAll(int userId) {
        return repository.getAll(userId);
    }

    @Override
    public List<Feed> findByRanking(int ranking, int userId) {
        return repository.findByRanking(ranking, userId);
    }
}
