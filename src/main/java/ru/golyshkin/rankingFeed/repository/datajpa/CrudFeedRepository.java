package ru.golyshkin.rankingFeed.repository.datajpa;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.repository.query.Param;
import ru.golyshkin.rankingFeed.model.Feed;

import java.util.List;

public interface CrudFeedRepository extends JpaRepository<Feed, Integer> {

    @Override
    Feed save(Feed feed);

    @Modifying
    int deleteByIdAndUser_Id(@Param("id") int id, @Param("userId") int userId);

    Feed getByIdAndUser_Id(@Param("id") int id, @Param("userId") int userId);

    List<Feed> getAllByUser_Id(@Param("userId") int userId, Sort sort);

    List<Feed> getAllByRankingAndUser_IdOrderByName(@Param("id") int id, @Param("userId") int userId);
}
