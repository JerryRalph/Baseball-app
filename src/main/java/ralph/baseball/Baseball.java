package ralph.baseball;

import java.text.DecimalFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.GenerationType;

@Entity
public class Baseball {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	Long id;
	String name;
	String number;
	String position;
	Double atBats;
	Double hits;
	String average;
	String cover;

	public Baseball() {
	}

	public Baseball(String name) {
		this.name = name;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Double getAtBats() {
		return atBats;
	}

	public void setAtBats(Double atBats) {
		this.atBats = atBats;
	}

	public Double getHits() {
		return hits;
	}

	public void setHits(Double hits) {
		this.hits = hits;
	}

	public String getAverage() {

		if (atBats == null) {
			return this.average = formatDouble(0);

		} else

			return this.average = formatDouble(hits / atBats);

	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	private String formatDouble(double number) {
		DecimalFormat fmt = new DecimalFormat(".000");
		return fmt.format(number);
	}

}
