package ralph.baseball.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ralph.baseball.Baseball;

@Repository
public interface BaseballRepository extends JpaRepository<Baseball, Long> {

	public List<Baseball> findByNameContaining(String name);

}
