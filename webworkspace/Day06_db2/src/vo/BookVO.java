package vo;

public class BookVO {
	private int bookNum;
	private String title;
	private String publisher;
	private int price;
	private String year;
///////////////////////////////////////////////////////////////////
	public BookVO(int bookNum, String title, String publisher, int price, String year) {
		this.bookNum = bookNum;
		this.title = title;
		this.publisher = publisher;
		this.price = price;
		this.year = year;
	}
	
	public BookVO(String title, String publisher, int price, String year) {
		this.title = title;
		this.publisher = publisher;
		this.price = price;
		this.year = year;
	}
	
	public BookVO(){
	}
///////////////////////////////////////////////////////////////////	
	public int getBookNum() {
		return bookNum;
	}
	
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	
}
