package vgbox.vgboxService;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vgbox.vgboxDB.DAO.AdminDao;
import vgbox.vgboxDB.VO.FileVo;
import vgbox.vgboxDB.VO.Member;
import vgbox.vgboxDB.VO.Membership;
import vgbox.vgboxDB.VO.Monthly;
import vgbox.vgboxDB.VO.Product;
import vgbox.vgboxDB.VO.Seller;

@Service
public class AdminService {
	@Autowired
	private AdminDao dao;
	// 회원
	public List<Member> ADmemList(){
		return dao.ADmemList();
	}
	public Member ADmemDetail(String id) {
		return dao.ADmemDetail(id);
	}
	public void ADdeleteMem(String id) {
		dao.ADdeleteMem(id);
	}
	// 판매자
	public Seller ADsellDetail(String id) {
		return dao.ADsellDetail(id);
	}
	public List<Seller> ADsellerList(){
		return dao.ADsellerList();
	}
	public void ADupdateSeller(Seller s) {
		dao.ADupdateSeller(s);
	}
	public void ADinsertSeller(Seller s) {
		dao.ADinsertSeller(s);
	}
	public void ADsellerDelete(String id) {
		dao.ADsellerDelete(id);
	}
	public List<Membership> getMemshipList() {		
		return dao.getMemshipList();
	}
	public String ADuptMemship(Membership ms) {
		return dao.ADuptMemship(ms)>0?"등록성공":"등록실패";
	}
	
	
	// 메인 총 유저 수
	public int allMember() {
		return dao.allMember();
	}
	
	// 메인 현월/연 매출
	public int currentMonthBenefit() {
		return dao.currentMonthBenefit();
	}
	public int currentYearBenefit() {
		return dao.currentYearBenefit();
	}
	
	// 메인 판매자 현황
	public int msProduct() {
		return dao.msProduct();
	}
	public int allProduct() {
		return dao.allProduct();
	}
	
	// 배송 현황
	public int shipCountRatio() {
		double shipCom = dao.shipCompleteCount();
		double allOrCnt = dao.allOrderCount();
		int shipCountRatio = (int)Math.round((shipCom/allOrCnt)*100);
		return shipCountRatio;
	}

	// 월별 매출 차트
	public Monthly monthlyBenefit() {
		return dao.monthlyBenefit();
	}
	
	// 상품 등록 시 판매자 아이디 리스트
	public List<String> sellerList(){
		return dao.sellerList();
	}
	
	@Value("${admin.upload}")
	private String path;
	
	public int ADinsertProd(Product prd) {
		// product_num 을 시퀀스로 생성
		int prdNo = dao.getProdSeq();
		if(prd.getProduct_name()!=null&&!prd.getProduct_name().equals("")) {
			// 상품 정보 테이블 등록
			int insPrd = dao.insertPrdInfo(new Product (
					prdNo,
					prd.getId(),
					prd.getProduct_name(),
					prd.getPrice(),
					prd.getFor_sale()
					));
			// 상품 정보 테이블에 등록 성공 시
			if(insPrd>0) {
				// 멤버쉽 상품 테이블에 동일 상품번호 등록
				if(dao.insertMemsPrd(prdNo)==0) {
					// 멤버쉽 등록 실패 시 상품번호를 0으로 리턴
					prdNo = 0;
				} 
			}
		}
		// 두 번의 등록 모두 성공 시, 상품번호 리턴
		return prdNo;
	}
	
	public int insertMemsPrd(int prdNum) {
		return dao.insertMemsPrd(prdNum);
	}
	
	public String uploadPrdImg(FileVo vo,int prdNo) {
		String msg = "등록성공";
		int cnt = 0;
		// 한 개의 상품번호당 네 개의 이미지 컬럼 테이블(최대 4개의 이미지)
		String[] fNames = new String[4];
		// 배열 형태의 MultipartFile을 fNames의 인덱스마다 하나씩 할당
		for(MultipartFile mf:vo.getImgFiles()) {
			String fname = mf.getOriginalFilename();
			fNames[cnt++] = fname;
			if(fname!=null&&!fname.trim().equals("")) {
				File f = new File(path+fname);
				try {	// path에 파일을 업로드 하는 과정
					mf.transferTo(f);
				} catch (IllegalStateException e) {
					msg = "예외발생1: "+e.getMessage();
				} catch (IOException e) {
					msg = "예외발생2: "+e.getMessage();
				}
			}
		}
		// sql 에러 방지 null값 처리
		for(int i=0; i < 4; i++) {
			if(fNames[i]==null) {
				fNames[i] = "";
			}
		}
		if(msg.equals("등록성공")) {
			dao.insertPrdImg(new Product(
					prdNo,
					fNames[0],
					fNames[1],
					fNames[2],
					fNames[3]
					));
		}
		return msg;
	}
	
	public String updateMems() {
		return dao.updateMems()>0?"수정성공":"수정실패";
	}
	
	
	
}
