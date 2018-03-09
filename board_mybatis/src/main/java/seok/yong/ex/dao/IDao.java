package seok.yong.ex.dao;

import java.util.ArrayList;

import seok.yong.ex.dto.ContentDto;
import seok.yong.ex.dto.LoginDto;

public interface IDao {

	public ArrayList<ContentDto> listDao();
	public void writeDao(String name,String title, String content);
	public void deleteDao(String id);
	public void joinDao(String id, String pw, String name);
	public LoginDto loginch(String id, String pw);
}
