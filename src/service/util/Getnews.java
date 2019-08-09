package service.util;

import model.News;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.NewsService;

import java.util.List;

@Service
public class Getnews {
    @Autowired
    NewsService newsService;
    private WebDriver driver;

    public void setup() {
        //调用chrome driver  注意：路径是chromedriver.exe(要跟chrome版本对应才可以)
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\chromedriver.exe");
        //调用chrome
        ChromeOptions chromeOptions = new ChromeOptions();
        chromeOptions.addArguments("--headless");
        driver = new ChromeDriver(chromeOptions);
        driver.manage().window().maximize();
    }

    //获取最新新闻
    public void gethot_news() {
        setup();
        News news = new News();
        driver.get("https://www.toutiao.com/ch/news_hot/");
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //获取最新新闻标题
        List<WebElement> elementstitle = driver.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("新闻的标题" + elementstitle.size());
        for (WebElement element : elementstitle) {
            news.setTitle(element.getText());
            try {
                newsService.saveInfo(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻时间
        List<WebElement> elementstime = driver.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//span[@class=\"lbtn\"]"));
        System.out.println("新闻的时间" + elementstime.size());
        for (WebElement element : elementstime) {
//            System.out.println(element.getText());
            news.setTime(element.getText());
            try {
                newsService.savetime(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻的url
        List<WebElement> elementspic = driver.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("新闻的链接" + elementspic.size());
        for (WebElement element : elementspic) {
//            System.out.println(element.getAttribute("href"));
            news.seturl(element.getAttribute("href"));
            try {
                newsService.saveurl(news);
            } catch (Exception e) {

            }
        }
    }

//    public static void main(String[] args) throws InterruptedException {
//        Getnews getNews = new Getnews();
//        getNews.gethot_news();
//    }

}
