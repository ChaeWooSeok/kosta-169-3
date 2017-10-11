package command.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.board.model.*;

public class CommandView implements Command 
{
	private String next;


	public CommandView( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request , HttpServletResponse response  ) throws CommandException{
		try{
			int article_id = 0;
			String id=request.getParameter("Id");
			if( id != null ) article_id = Integer.parseInt(id);
			
		
			BoardDao dao = BoardDao.getInstance();
			BoardRec rec = dao.selectById(article_id);	
			dao.increaseReadCount(id);
		      
		    request.setAttribute("rec", rec );
		}catch( BoardException ex ){
			throw new CommandException("CommandList.java < 목록보기 >" + ex.toString() ); 
		}
		
		return next;
	}
}
