package vgbox.vgboxDB.VO;

import org.springframework.web.multipart.MultipartFile;

public class FileVo {
	private String id;
	private MultipartFile[] imgFiles;

	public FileVo() {
		// TODO Auto-generated constructor stub
	}

	public FileVo(String id, MultipartFile[] imgFiles) {
		this.id = id;
		this.imgFiles = imgFiles;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public MultipartFile[] getImgFiles() {
		return imgFiles;
	}

	public void setImgFiles(MultipartFile[] imgFiles) {
		this.imgFiles = imgFiles;
	}
	
}
