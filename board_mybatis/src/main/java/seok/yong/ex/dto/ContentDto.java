package seok.yong.ex.dto;

import java.sql.Timestamp;

public class ContentDto {

	private int bId;
	private String bName;
	private String bTitle;
	private String bContent;
	private Timestamp bData;
	private int bGroup;
	private int bStep;
	private int bIndent;
	
	public ContentDto() {}
	public ContentDto(int bId,String bName,String bTitle,String bContent,Timestamp bData,int bGroup,int bStep, int bIndent) {
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bData = bData;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
	}
	
	public int getbId() {
		return bId;
	}
	public void setbId(int bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public Timestamp getbData() {
		return bData;
	}
	public void setbData(Timestamp bData) {
		this.bData = bData;
	}
	public int getbGroup() {
		return bGroup;
	}
	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}
	public int getbStep() {
		return bStep;
	}
	public void setbStep(int bStep) {
		this.bStep = bStep;
	}
	public int getbIndent() {
		return bIndent;
	}
	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}
}
