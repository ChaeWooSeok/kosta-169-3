package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatis.model.Member;
import mybatis.session.MemberRepository;

public class CommandJoin implements Command 
{
	private String next;
		MemberRepository repo = new MemberRepository();
	public CommandJoin( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request , HttpServletResponse response  ) throws CommandException {
		try{
			String birth = request.getParameter("u_birth1")+request.getParameter("u_birth2")+request.getParameter("u_birth3");
			String phone = request.getParameter("u_mtel1")+request.getParameter("u_mtel2")+request.getParameter("u_mtel3");
			Member member=new Member();
			member.setmId(request.getParameter("u_id"));
			member.setmPass(request.getParameter("u_pwd"));
			member.setmName(request.getParameter("u_name"));
			member.setmBirth(birth);
			member.setmTel(phone);
			member.setmGender(request.getParameter("u_sex"));
			member.setmRemarry(request.getParameter("u_married"));
			member.setmEdu(request.getParameter("u_edu"));
			member.setmJob(request.getParameter("u_work"));
			member.setmSal(request.getParameter("u_dwell"));
			
			
			int result=repo.insertMember(member);	
			
			if(result==0)
			{
				System.out.println("회원가입 실패");
			}
			else
			{
				System.out.println("회원가입성공");
			}
		
		}catch( Exception ex ){
			throw new CommandException(ex.toString()); 
		}
		
		return next;
	}
}
