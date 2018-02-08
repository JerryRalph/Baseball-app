package ralph.baseball;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import ralph.baseball.Baseball;
import ralph.baseball.repository.BaseballRepository;
import ralph.baseball.repository.ScheduleRepository;

@Controller
@RequestMapping("/baseball")
public class BaseballController {

	@Autowired
	BaseballRepository baseballRepository;

	@Autowired
	ScheduleRepository scheduleRepository;

	@RequestMapping({ "", "/" })
	public ModelAndView player() {
		ModelAndView mav = new ModelAndView("player");
		List<Baseball> players = baseballRepository.findAll();
		mav.addObject("player", players);
		return mav;
	}

	@RequestMapping("add")
	public String add(Model model) {
		model.addAttribute("playerForm", new Baseball());
		return "add";
	}

	@RequestMapping(value = { "", "/roster" }, method = POST)
	public RedirectView addPlayer(Baseball player) {
		baseballRepository.saveAndFlush(player);
		return new RedirectView("/baseball/roster");

	}

	@RequestMapping(value = "/delete", method = GET)
	public RedirectView delete(@RequestParam("id") long id) {
		Baseball player = baseballRepository.getOne(id);
		baseballRepository.delete(player);
		return new RedirectView("/baseball/roster");

	}

	@RequestMapping("/detail")
	public String detail(Model model, @RequestParam("id") long id) {
		model.addAttribute("baseball", baseballRepository.findOne(id));
		return "playerDetail";
	}

	@RequestMapping("{id}/edit")
	public String edit(Model model, @PathVariable("id") long playerId) {
		model.addAttribute("editForm", baseballRepository.findOne(playerId));
		return "edit";
	}

	@RequestMapping("/stats")
	public String stats(Model model, @RequestParam("id") long id) {
		model.addAttribute("baseball", baseballRepository.findOne(id));
		return "stats";
	}

	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String name) {

		ModelMap map = new ModelMap();
		List<Baseball> players = baseballRepository.findByNameContaining(name);
		map.put("player", players);
		return new ModelAndView("player", map);
	}

	@RequestMapping("/schedule")
	public ModelAndView schedule() {
		ModelAndView mav = new ModelAndView("schedule");
		List<Schedule> teams = scheduleRepository.findAll();
		mav.addObject("schedule", teams);
		return mav;
	}

	@RequestMapping("/addGame")
	public String addGame(Model model) {
		model.addAttribute("opponentForm", new Schedule());
		return "addGame";
	}

	@RequestMapping(value = { "/schedule" }, method = POST)
	public RedirectView addGames(Schedule schedule) {
		scheduleRepository.saveAndFlush(schedule);
		return new RedirectView("schedule");

	}

	@RequestMapping(value = "schedule/delete", method = GET)
	public RedirectView deleteTourney(@RequestParam("id") long id) {
		Schedule tourney = scheduleRepository.getOne(id);
		scheduleRepository.delete(tourney);
		return new RedirectView("/baseball/schedule");

	}

	@RequestMapping("/schedule/{id}/editTourney")
	public String editTourney(Model model, @PathVariable("id") long tourneyId) {
		model.addAttribute("editTourneyForm", scheduleRepository.findOne(tourneyId));
		return "editTourney";
	}

	@RequestMapping("schedule/list")
	public ModelAndView sort2() {
		ModelAndView mav = new ModelAndView("schedule");
		List<Schedule> teams = scheduleRepository.findAllByOrderByDateAsc();
		mav.addObject("schedule", teams);
		return mav;
	}
	@RequestMapping("/roster")
	public ModelAndView roster() {
		ModelAndView mav = new ModelAndView("roster");
		List<Baseball> teams = baseballRepository.findAll();
		mav.addObject("roster", teams);
		return mav;
	}

}
