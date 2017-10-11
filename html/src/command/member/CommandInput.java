package command.member;

import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.board.model.BoardDao;
import mybatis.board.model.BoardException;
import mybatis.board.model.BoardRec;

public class CommandInput implements Command {
	private String next;

	public CommandInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CommandException {
		try{

			BoardRec rec = new BoardRec();
			
			rec.setWriterName(request.getParameter("writerName"));
			rec.setTitle(request.getParameter("title"));
			rec.setContent(request.getParameter("content"));
			rec.setPassword(request.getParameter("password"));
				
			System.out.println(rec.getContent());
			BoardDao dao = BoardDao.getInstance();
			int groupId = dao.getGroupId();
			rec.setGroupId(groupId);
			DecimalFormat dformat = new DecimalFormat("0000000000");
			rec.setSequenceNo( dformat.format(groupId) + "999999");
			int rc =dao.insert(rec);
			request.setAttribute("re",rc);

		}catch( BoardException ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
