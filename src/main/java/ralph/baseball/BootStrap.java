package ralph.baseball;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import ralph.baseball.Baseball;
import ralph.baseball.repository.BaseballRepository;
import ralph.baseball.repository.ScheduleRepository;

@Component
public class BootStrap implements ApplicationListener<ContextRefreshedEvent> {

	@Autowired
	protected BaseballRepository baseballRepository;

	@Autowired
	protected ScheduleRepository scheduleRepository;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {

		if (baseballRepository.count() < 3) {
			baseballRepository.save(new Baseball("Jake"));
			baseballRepository.save(new Baseball("Ethan"));
			baseballRepository.save(new Baseball("Maxton"));

		}

		if (scheduleRepository.count() < 3) {
			scheduleRepository.save(new Schedule("Columbus"));
			scheduleRepository.save(new Schedule("Reynoldsburg"));
			scheduleRepository.save(new Schedule("Pickerington"));

		}
	}
}
