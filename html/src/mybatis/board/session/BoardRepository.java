package mybatis.board.session;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sun.xml.internal.ws.api.ha.HaInfo;

import mybatis.board.model.BoardRec;

public class BoardRepository {
	private String namespace = "mapper.BoardMapper";

	SqlSessionFactory getSqlSessionFactory() {
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream("mybatis-config2.xml");
		} catch (Exception ex) {
			System.out.println("마이바티즈 설정 실패 : " + ex.getMessage());
		}
		SqlSessionFactory sessFac = new SqlSessionFactoryBuilder().build(in);
		return sessFac;
	}

	public List<BoardRec> selectRec(int firstRow,int endRow) {
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {			
			HashMap hash =new HashMap<>();
			hash.put("first",firstRow);
			hash.put("end",endRow);
			return sess.selectList(namespace + ".selectAll",hash);
		} finally {
			sess.close();
		}

	}
	public int total()
	{
		SqlSession sess = getSqlSessionFactory().openSession();
		// JDBC의 연결객체 -> SqlSession
		try {
			return sess.selectOne(namespace + ".selectTotal");
		} finally {
			sess.close();
		}		
	}
//	public int insertComment(Comment c)
//	{
//		SqlSession sess =getSqlSessionFactory().openSession();
//		try {
//		int result =sess.insert(namespace +".insertComment",c);
//		if(result>0)
//			sess.commit();
//		else
//			sess.rollback();
//		return result;
//		}	 
//		finally {sess.close();}
//		
//	}
//	public Comment selectCommentByPk(long cId)
//	{
//		SqlSession sess =getSqlSessionFactory().openSession();
//		try {
//		HashMap hash =new HashMap<>();
//		hash.put("cId",cId);
//		String st =String.valueOf(cId);
//		Comment result= sess.selectOne(namespace+".selectAll",hash);
//		return result;
//		}
//		finally {sess.close();}
//	
//	}
//	public int deleteCommentByPk(String del)
//	{
//		SqlSession sess =getSqlSessionFactory().openSession();
//		try {
//		int result =sess.delete(namespace +".deleteOne",del);
//		if(result>0)
//			sess.commit();
//		else
//			sess.rollback();
//		return result;
//		}	 
//		finally {sess.close();}
//		
//		
//	}
//	public int ModifyComment(Comment c)
//	{
//		SqlSession sess =getSqlSessionFactory().openSession();
//		try {
//		int result =sess.update(namespace +".updateComment",c);
//		if(result>0)
//			sess.commit();
//		else
//			sess.rollback();
//		return result;
//		}	 
//		finally {sess.close();}
//		
//	}
	
}
