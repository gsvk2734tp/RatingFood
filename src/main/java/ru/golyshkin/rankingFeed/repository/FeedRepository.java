package ru.golyshkin.rankingFeed.repository;

import ru.golyshkin.rankingFeed.model.Feed;

import java.util.List;

public interface FeedRepository {

    Feed save(Feed feed, int userId);

    void delete(int id, int userId);

    Feed get(int id, int userId);

    List<Feed> getAll(int userId);

    List<Feed> findByRanking(int ranking, int userId);

}
