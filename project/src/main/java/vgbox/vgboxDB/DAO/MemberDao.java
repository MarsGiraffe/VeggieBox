package vgbox.vgboxDB.DAO;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import vgbox.vgboxDB.VO.Member;
import vgbox.vgboxDB.VO.Seller;

// vgbox.vgboxDB.DAO.MemberDao
public interface MemberDao {
		
	// 회원가입
	public void join(Member ins);
	public void joinSeller(Seller ins);
	
	// 아이디 중복 체크
	public Member checkID(@Param("id") String id);
	public Seller checkIDs(@Param("id") String id);
	
	// 로그인
	public Member login(@Param("id") String id, @Param("password") String pass);
	public Seller loginS(@Param("id") String id, @Param("password") String pass);
	
	// 아이디, 비밀번호 찾기
	@Select("SELECT * FROM MEMBER_INFORMATION "
			+ "WHERE NAME=#{name} AND CONTACT=#{contact}")
	public Member allFindIDm(@Param("name") String name, 
			@Param("contact") String contact);

	@Select("SELECT * FROM SELLER_REG_INFO "
			+ "WHERE NAME=#{name} AND CONTACT=#{contact}")
	public Seller allFindIDs(@Param("name") String name, 
			@Param("contact") String contact);

	@Select("SELECT * FROM MEMBER_INFORMATION "
			+ "WHERE ID=#{id} AND NAME=#{name} AND CONTACT=#{contact}")
	public Member allFindPWDm(@Param("name") String name, 
			@Param("id") String id, @Param("contact") String contact);

	@Select("SELECT * FROM SELLER_REG_INFO "
			+ "WHERE ID=#{id} AND NAME=#{name} AND CONTACT=#{contact}")
	public Seller allFindPWDs(@Param("name") String name, 
			@Param("id") String id, @Param("contact") String contact);

	
}
