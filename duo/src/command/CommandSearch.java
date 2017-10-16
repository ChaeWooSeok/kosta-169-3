package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.model.Member;
import mybatis.session.MemberRepository;

public class CommandSearch implements Command 
{
	private String next;
		MemberRepository repo = new MemberRepository();
	public CommandSearch( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request , HttpServletResponse response  ) throws CommandException {
		try{
			
			
			String mJob = request.getParameter("mJob");
			String mEdu = request.getParameter("mEduo");
			List<Member> m = repo.searchMember(mJob,mEdu);
			
			request.setAttribute("search", m);
		   			
		  
		}catch( Exception ex ){
			throw new CommandException(ex.toString()); 
		}
		
		return next;
	}
}
