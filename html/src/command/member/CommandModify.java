package command.member;

import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.board.model.BoardDao;
import mybatis.board.model.BoardException;
import mybatis.board.model.BoardRec;

public class CommandModify implements Command {
	private String next;

	public CommandModify( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response  ) throws CommandException {
		try{

			BoardRec rec = new BoardRec();
//			rec=request.getParameter("msg")
			
			int result = BoardDao.getInstance().update(rec);
			
			request.setAttribute("result",result);

		}catch( BoardException ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
