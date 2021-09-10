package mbti;

public class MbtiDTO {
	private String mbti;
	private int people;
	private String result;
	private String imgRoot;
	private String explanation;
	
	public MbtiDTO() {
		
	}
	
	public MbtiDTO(String mbti, int people, String result, String imgRoot, String explanation) {
		this.mbti = mbti;
		this.people = people;
		this.result = result;
		this.imgRoot = imgRoot;
		this.explanation = explanation;
	}
	
	public String getMbti() {
		return mbti;
	}
	public void setMbti(String mbti) {
		this.mbti = mbti;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getImgRoot() {
		return imgRoot;
	}
	public void setImgRoot(String imgRoot) {
		this.imgRoot = imgRoot;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	
	
}
