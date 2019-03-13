package ru.golyshkin.rankingFeed.repository.datajpa;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import ru.golyshkin.rankingFeed.model.Feed;
import ru.golyshkin.rankingFeed.repository.FeedRepository;

import java.util.List;

public class DataJpaFeedImpl implements FeedRepository {
    private static final Sort SORT_RANKING = new Sort(Sort.Direction.DESC, "ranking");

    @Autowired
    private CrudFeedRepository feedRepository;

    @Autowired
    private CrudUserRepository userRepository;

    @Override
    public Feed save(Feed feed, int userId) {
        if (!feed.isNew() && get(feed.getId(), userId) == null) {
            return null;
        }
        feed.setUser(userRepository.getOne(userId));
        return feedRepository.save(feed);
    }

    @Override
    public void delete(int id, int userId) {
        feedRepository.deleteByIdAndUser_Id(id, userId);
    }

    @Override
    public Feed get(int id, int userId) {
        return feedRepository.getByIdAndUser_Id(id, userId);
    }

    @Override
    public List<Feed> getAll(int userId) {
        return feedRepository.getAllByUser_Id(userId, SORT_RANKING);
    }

    @Override
    public List<Feed> findByRanking(int ranking, int userId) {
        return feedRepository.getAllByRankingAndUser_IdOrderByName(ranking, userId);
    }
}
