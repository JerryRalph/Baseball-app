package ralph.baseball;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.GenerationType;

@Entity
public class Schedule {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id;
	String tournament;
	String opponent;
	Date date;
	String location;
	String stringDate;

	public Schedule() {

	}

	public Schedule(String opponent) {
		this.opponent = opponent;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTournament() {
		return this.tournament;
	}

	public void setTournament(String tournament) {
		this.tournament = tournament;
	}

	public String getOpponent() {
		return this.opponent;
	}

	public void setOpponent(String opponent) {
		this.opponent = opponent;
	}

	public Date getDate() {

		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getStringDate() {
		return this.stringDate = formatDate(this.date);
	}

	private String formatDate(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MMMMM dd yyyy ");
		return simpleDateFormat.format(date);
	}

}
