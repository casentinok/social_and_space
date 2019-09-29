package kr.co.project;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.project.domain.CommonBoardVO;
import kr.co.project.domain.Criteria;
import kr.co.project.domain.PageMaker;
import kr.co.project.domain.UserHasFavoriteVO;
import kr.co.project.persistence.CommonBoardDAO;
import kr.co.project.persistence.FavoriteDAO;
import kr.co.project.service.BoardService;
import kr.co.project.service.FavoriteService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class DataSourceTest {
	
	
	@Inject
	private BoardService bservice;	
	

	@Test
	public void testCommonBoard() {
		
		try {
			bservice.listAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
//	@Test
//	public void delete() {
//		int board_id = 118;
//		String addr;
//		try {
//			addr = service.getaddr(board_id);
//			System.out.println(addr);
//
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//			}
//	

}
