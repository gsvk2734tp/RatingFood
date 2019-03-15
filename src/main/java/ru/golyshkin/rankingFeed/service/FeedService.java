package ru.golyshkin.rankingFeed.service;

import ru.golyshkin.rankingFeed.model.Feed;
import ru.golyshkin.rankingFeed.util.exeption.NotFoundException;

import java.util.List;

public interface FeedService {

    Feed create(Feed feed, int userId);

    Feed update(Feed feed, int userId) throws NotFoundException;

    void delete(int id, int userId);

    Feed get(int id, int userId) throws NotFoundException;

    List<Feed> getAll(int userId);

    List<Feed> findByRanking(int ranking, int userId);

}
