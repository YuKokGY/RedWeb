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
    private WebDriver driver2;
    private WebDriver driver3;
    private WebDriver driver4;

    public void setup() {
        //调用chrome driver  注意：路径是chromedriver.exe(要跟chrome版本对应才可以)
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\chromedriver.exe");
        //调用chrome
        ChromeOptions chromeOptions = new ChromeOptions();
        chromeOptions.addArguments("--headless");
        driver = new ChromeDriver(chromeOptions);
        driver.manage().window().maximize();
        driver2 = new ChromeDriver(chromeOptions);
        driver2.manage().window().maximize();
        driver3 = new ChromeDriver(chromeOptions);
        driver3.manage().window().maximize();
        driver4 = new ChromeDriver(chromeOptions);
        driver4.manage().window().maximize();
    }

    //获取最新新闻
    public void gethot_news() {
        setup();
        News news = new News();
        driver.get("https://www.toutiao.com/ch/news_hot/");
        driver2.get("https://www.toutiao.com/ch/news_world/");
        driver3.get("https://www.toutiao.com/ch/news_sports/");
        driver4.get("https://www.toutiao.com/ch/news_military/");
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        //获取最新新闻标题
        List<WebElement> elementstitle = driver.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("热点新闻的标题" + elementstitle.size());
        for (WebElement element : elementstitle) {
            news.setTitle(element.getText());
            news.setNewssize(String.valueOf(elementstitle.size()));
            try {
                newsService.saveInfo(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻时间
        List<WebElement> elementstime = driver.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//span[@class=\"lbtn\"]"));
        System.out.println("热点新闻的时间" + elementstime.size());
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
        System.out.println("热点新闻的链接" + elementspic.size());
        for (WebElement element : elementspic) {
//            System.out.println(element.getAttribute("href"));
            news.seturl(element.getAttribute("href"));
            try {
                newsService.saveurl(news);
            } catch (Exception e) {
            }
        }

        //获取最新新闻标题
        List<WebElement> elementstitle2 = driver2.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("国际新闻的标题" + elementstitle2.size());
        for (WebElement element : elementstitle2) {
            news.setTitle(element.getText());
            news.setNewssize(String.valueOf(elementstitle2.size()));
            try {
                newsService.saveInfo2(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻时间
        List<WebElement> elementstime2 = driver2.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//span[@class=\"lbtn\"]"));
        System.out.println("国际新闻的时间" + elementstime2.size());
        for (WebElement element : elementstime2) {
//            System.out.println(element.getText());
            news.setTime(element.getText());
            try {
                newsService.savetime2(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻的url
        List<WebElement> elementspic2 = driver2.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("国际新闻的链接" + elementspic2.size());
        for (WebElement element : elementspic2) {
//            System.out.println(element.getAttribute("href"));
            news.seturl(element.getAttribute("href"));
            try {
                newsService.saveurl2(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻标题
        List<WebElement> elementstitle3 = driver3.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("体育新闻的标题" + elementstitle3.size());
        for (WebElement element : elementstitle3) {
            news.setTitle(element.getText());
            news.setNewssize(String.valueOf(elementstitle3.size()));
            try {
                newsService.saveInfo3(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻时间
        List<WebElement> elementstime3 = driver3.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//span[@class=\"lbtn\"]"));
        System.out.println("体育新闻的时间" + elementstime3.size());
        for (WebElement element : elementstime3) {
//            System.out.println(element.getText());
            news.setTime(element.getText());
            try {
                newsService.savetime3(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻的url
        List<WebElement> elementspic3 = driver3.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("体育新闻的链接" + elementspic3.size());
        for (WebElement element : elementspic3) {
//            System.out.println(element.getAttribute("href"));
            news.seturl(element.getAttribute("href"));
            try {
                newsService.saveurl3(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻标题
        List<WebElement> elementstitle4 = driver4.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("军事新闻的标题" + elementstitle4.size());
        for (WebElement element : elementstitle4) {
            news.setTitle(element.getText());
            news.setNewssize(String.valueOf(elementstitle4.size()));
            try {
                newsService.saveInfo4(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻时间
        List<WebElement> elementstime4 = driver4.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//span[@class=\"lbtn\"]"));
        System.out.println("军事新闻的时间" + elementstime4.size());
        for (WebElement element : elementstime4) {
//            System.out.println(element.getText());
            news.setTime(element.getText());
            try {
                newsService.savetime4(news);
            } catch (Exception e) {

            }
        }

        //获取最新新闻的url
        List<WebElement> elementspic4 = driver4.findElements(By.xpath("//*//li[@ga_event=\"article_item_click\"]//a[@class=\"link title\"]"));
        System.out.println("军事新闻的链接" + elementspic4.size());
        for (WebElement element : elementspic4) {
//            System.out.println(element.getAttribute("href"));
            news.seturl(element.getAttribute("href"));
            try {
                newsService.saveurl4(news);
            } catch (Exception e) {

            }
        }
    }


}
