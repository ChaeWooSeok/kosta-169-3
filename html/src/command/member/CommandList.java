package command.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.board.model.BoardException;
import mybatis.board.model.BoardRec;
import mybatis.board.session.BoardRepository;

public class CommandList implements Command 
{
	private String next;
	
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerRec = 3;	// 한페이지당 레코드 수
	BoardRepository repo = new BoardRepository();
	public CommandList( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request , HttpServletResponse response  ) throws CommandException {
		try{
			
			String pString=request.getParameter("page");
			int pNum;
			
			if(pString==null)
				pNum = 1;
			else 
			{
				pNum =Integer.parseInt(pString);
			}
			
			int firstRow=countPerRec*(pNum-1)+1;
			int endRow=pNum*countPerRec;
					
		   // List <BoardRec> mList = BoardDao.getInstance().selectList(firstRow,endRow);	
			List<BoardRec> mList=repo.selectRec(firstRow,endRow);
		    
		    int totalRecCount =repo.total();
		    int totalPage=(int)Math.ceil(totalRecCount/(double)countPerRec);
	
		    request.setAttribute("param",mList);
		    request.setAttribute("total",totalPage);			
			
//			String pString=request.getParameter("page");
//			int pNum;
//			
//			if(pString==null)
//				pNum = 1;
//			else 
//			{
//				pNum =Integer.parseInt(pString);
//			}
//			
//			int firstRow=countPerRec*(pNum-1)+1;
//			int endRow=pNum*countPerRec;
//					
//		    List <BoardRec> mList = BoardDao.getInstance().selectList(firstRow,endRow);	
//		      
//		    
//		    int total =BoardDao.getInstance().getTotalCount();
//		    request.setAttribute("param", mList );
//		    request.setAttribute("total",total);
		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기 >" + ex.toString() ); 
		}
		
		return next;
	}
}
