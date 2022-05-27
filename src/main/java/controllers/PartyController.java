package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.PartyBossDAO;
import dao.PartyDAO;
import dao.PartyMemberDAO;
import dto.PartyBossDTO;
import dto.PartyMemberDTO;

@WebServlet("*.party")
public class PartyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PartyBossDAO dao = new PartyBossDAO();
		PartyMemberDAO daoM = new PartyMemberDAO();
		PartyDAO daoP = new PartyDAO();

		String uri = request.getRequestURI();
		Gson g = new Gson();

		try {

			// 보스 테이블에 저장
			if (uri.equals("/joinBoss.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");
				String ottId = request.getParameter("ottId");
				String ottPW = request.getParameter("ottPw");

				System.out.println(id + " " + ott + " " + ottId + " " + ottPW);

				daoP.createParty(); // 빈파티를 만든다.
				dao.insert(new PartyBossDTO(id, ott, ottId, ottPW)); // 보스할꺼고 내가 이용할 ott는 무엇이고 ottid와 ottpw 추가
				int seq = dao.selectBossSeq(ottId); // 보스테이블에서 내아이디가 있는 테이블의 시퀀
				System.out.println(ott + " " + seq);
				daoP.updateBoss(id, seq); // 파티에 테이블에 보스 하나 넣고 업데이트로

				response.sendRedirect("/ifPartyExists.party");
				// 보스 탈
			} else if (uri.equals("/joinMember.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");
				System.out.println(id + " " + ott);
				int partySize = daoP.sizeSeq();
				daoM.insert(new PartyMemberDTO(id,ott));
				System.out.println("파티사이즈 " + partySize);
				//int[] insertSeq = new int[partySize];
				//System.out.println("배열 크기" + insertSeq.length);

				for (int i = 0; i <= partySize; i++) {
					System.out.println("통과" + " " + i);

					// 보스에 값이 없으
					if (daoP.isM1m2m3Exist(i + 1).getBoss() != null) {
						System.out.println("보스있니 파티테이블 번호" + " " + i);
						if ((daoP.isM1m2m3Exist(i + 1).getM1() == null || daoP.isM1m2m3Exist(i + 1).getM2() == null)
								|| daoP.isM1m2m3Exist(i + 1).getM3() == null) {
							if (daoP.isM1m2m3Exist(i + 1).getM1() == null) {

								daoP.updateM1(id, i + 1);
								System.out.println("m1" + " " + i);
								break;
							} else if (daoP.isM1m2m3Exist(i + 1).getM2() == null) {

								daoP.updateM2(id, i + 1);
								System.out.println("m2" + " " + i);
								break;
							} else if (daoP.isM1m2m3Exist(i + 1).getM3() == null) {
								// insertSeq[i] = i+1;
								daoP.updateM3(id, i + 1);
								System.out.println("m3" + " " + i);
								break;
							}
						} else {
							System.out.println("파티매칭중입니다.12");
						}
					} else {
						System.out.println("파티 매칭중입니다.34");
					}

				}
				response.sendRedirect("/ifPartyExists.party");
				// 프론트에 뿌리
			}

			else if (uri.equals("out.party")) {
				String id = (String) request.getSession().getAttribute("loginID");
				String ott = request.getParameter("ott");

				dao.ottBossOut(id, ott);
				response.sendRedirect("./mypuzzle.jsp");

				// 프론트에 뿌리
			} else if (uri.equals("/myottpage.party")) {

				String id = (String) request.getSession().getAttribute("loginID");
				PartyBossDTO dto = dao.myott(id);
				System.out.println(dto.getOttid());
				String nickname = dao.myNickName(id);

				request.setAttribute("dto", dto);
				request.setAttribute("nickname", nickname);
				request.getRequestDispatcher("./myOtt.jsp").forward(request, response);

			} else if (uri.equals("/ifPartyExists.party")) {

				String id = (String) request.getSession().getAttribute("loginID");
				Boolean isBossExist = dao.isBossExist(id);
				Boolean isMemberExist = daoM.isMemberExist(id);

				System.out.println(id);

				if (isBossExist == true && isMemberExist == false) {
					String bossOtt = dao.selectBossOtt(id);
					String boss = "퍼즐장";
					request.setAttribute("bossOtt", bossOtt);
					request.setAttribute("boss", boss);
					request.getRequestDispatcher("./puzzle/mypuzzle.jsp").forward(request, response);

				} else if (id == null) {

					System.out.println("아이디 없어서 로그인해주세요라는 알랏 만들기");

					response.sendRedirect("./member/login.jsp");

				} else if (isMemberExist == true && isBossExist == false) {
					String memberOtt = daoM.selectMemberOtt(id);
					String member ="퍼즐원";
					request.setAttribute("memberOtt", memberOtt);
					request.setAttribute("member", member);

					request.getRequestDispatcher("./puzzle/mypuzzle.jsp").forward(request, response);
				} else if (isBossExist == true && isMemberExist == true) {
					String bossOtt = dao.selectBossOtt(id);
					request.setAttribute("bossOtt", bossOtt);
					String memberOtt = daoM.selectMemberOtt(id);
					request.setAttribute("memberOtt", memberOtt);
					request.getRequestDispatcher("./mypuzzleAlready.jsp").forward(request, response);
				} else

					request.getRequestDispatcher("./puzzle/startpuzzle.jsp").forward(request, response);

			}

		} catch (

		Exception e) {
			e.printStackTrace();
			response.sendRedirect("./error.jsp");
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}