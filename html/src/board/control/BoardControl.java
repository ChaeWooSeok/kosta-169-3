package board.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.command.*;
import command.member.Command;
import command.member.CommandDelete;
import command.member.CommandException;
import command.member.CommandInput;
import command.member.CommandList;
import command.member.CommandModify;
import command.member.CommandNull;
import command.member.CommandReply;
import command.member.CommandView;


/**
 * Servlet implementation class GuestControl
 */
public class BoardControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/04_board_class/";
	private String  error = "error.jsp";
	

	
	
    public BoardControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();

		commandMap.put("main-page",	new CommandNull("start.jsp") );
		commandMap.put("list-page",	new CommandList("BoardList.jsp") );
		// 나머지도 추가하기		
		commandMap.put("list-view",new CommandView("BoardView.jsp"));
	
		commandMap.put("input_page", new CommandNull("BoardInputForm.jsp"));
		
		commandMap.put("save_page", new CommandInput("BoardSave.jsp"));
		
		commandMap.put("reply_page",new CommandNull("BoardReplyForm.jsp"));
		commandMap.put("reply",new CommandReply("BoardReply.jsp"));
		
		commandMap.put("modify_form", new CommandNull("BoardModifyForm.jsp"));
		commandMap.put("modify", new CommandModify("BoardModify.jsp"));
		
		commandMap.put("delete", new CommandNull("deleteMessage.jsp"));
		commandMap.put("delete-confirm",new CommandDelete("deleteConfirm.jsp"));
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "main-page";
		}

		
		Command cmd = null;

		try{
			
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (Command)commandMap.get( cmdKey);
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}

			nextPage = cmd.execute( request, response  );

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
