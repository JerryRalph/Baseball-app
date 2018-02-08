package ralph.baseball.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ralph.baseball.Schedule;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
	public List<Schedule> findAllByOrderByDateAsc();
}
