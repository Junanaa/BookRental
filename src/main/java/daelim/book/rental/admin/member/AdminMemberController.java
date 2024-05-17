package daelim.book.rental.admin.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {

    @Autowired
    private AdminMemberService adminMemberService;

    @RequestMapping("/createAccountForm")
    public String createAccountForm() {
        System.out.println("[AdminHomeController] createAccountForm()");
        return "/admin/member/create_account_form";
    }
    @RequestMapping("/loginForm")
    public String loginForm() {
        System.out.println("[AdminHomeController] loginForm()");
        return "/admin/member/login_form";
    }

    @PostMapping("/createAccountConfirm")
    public String createAccountConfirm(AdminMemberVo adminMemberVo){
        System.out.println("[AdminMemberController] createAccountConfirm()");
        String nextPage = "/admin/member/create_account_form_ok";
        int result = adminMemberService.createAccount(adminMemberVo);
        if(result <= 0) {
            nextPage = "/admin/member/create_account_form_ng";
        }
        return nextPage;
    }
}
