package com.zr.beans;

import java.util.List;

public class page {
	private int currentPage = 1; // ��ǰҳ, Ĭ����ʾ��һҳ
	private int pageCount = 4;   // ÿҳ��ʾ������(��ѯ���ص�����), Ĭ��ÿҳ��ʾ4��
	private int totalCount;      // �ܼ�¼��
	private int totalPage;       // ��ҳ�� = �ܼ�¼�� / ÿҳ��ʾ������  (+ 1)
	private List<KeHu> pageData;       // ��ҳ��ѯ��������
	
	// ������ҳ��
		public int getTotalPage() {
			if (totalCount % pageCount == 0) {
				totalPage = totalCount / pageCount;
			} else {
				totalPage = totalCount / pageCount + 1;
			}
			return totalPage;
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		
		public int getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}
		public int getPageCount() {
			return pageCount;
		}
		public void setPageCount(int pageCount) {
			this.pageCount = pageCount;
		}
		public int getTotalCount() {
			return totalCount;
		}
		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}
		
		public List<KeHu> getPageData() {
			return pageData;
		}
		public void setPageData(List<KeHu> pageData) {
			this.pageData = pageData;
		}
		
}
