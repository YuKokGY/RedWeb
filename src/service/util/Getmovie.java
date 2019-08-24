package service.util;

import model.Movie;
import model.Moviepic;
import model.Pic;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MovieService;

import java.util.List;

@Service
public class Getmovie {
    private WebDriver driver;
    @Autowired
    MovieService movieService;
    private Movie movie;
    private Moviepic moviepic;

    public void setup() {
        //调用chrome driver  注意：路径是chromedriver.exe(要跟chrome版本对应才可以)
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\chromedriver.exe");
        //调用chrome
        ChromeOptions chromeOptions=new ChromeOptions();
        chromeOptions.addArguments("--headless");
        driver = new ChromeDriver(chromeOptions);
        driver.manage().window().maximize();
    }

    public void getnowplaying(){
        setup();
        movie = new Movie();
        moviepic = new Moviepic();
        driver.get("https://movie.douban.com/cinema/nowplaying/qingyuan/");
        //爬取正在上映的电影
        List<WebElement> elements=driver.findElements(By.xpath("//*//div[@id=\"nowplaying\"]//li[@id]"));
        System.out.println("电影数量" + elements.size());
        for (WebElement element:elements){
            //获取电影信息
            movie.setMoviename(element.getAttribute("data-title"));
            movie.setMovierate(element.getAttribute("data-score"));
            movie.setMovietime(element.getAttribute("data-duration"));
            movie.setMovieregion(element.getAttribute("data-region"));
            movie.setMoviedirector(element.getAttribute("data-director"));
            movie.setMovieactors(element.getAttribute("data-actors"));
            try {
                movieService.save(movie);
            }catch (Exception e){

            }

        }

        List<WebElement> picelement=driver.findElements(By.xpath("//*//div[@id=\"nowplaying\"]//li[@id]//img"));
        System.out.println("电影图片数量" + elements.size());
        for (WebElement element:picelement){
            //获取电影信息
            moviepic.setUrl(element.getAttribute("src"));
            moviepic.setMoviesize(String.valueOf(elements.size()));
            try {
                movieService.saveurl(moviepic);
            }catch (Exception e){

            }

        }
    }

    public void getPic(){
        setup();
        Pic pic=new Pic();
        driver.get("https://www.48tu.cn/");
        List<WebElement> elements=driver.findElements(By.xpath("//*//div[@class=\"thumb\"]//a//img"));
        //System.out.println(elements.size());
        for (WebElement element:elements){
            pic.setUrl(element.getAttribute("src"));
            //获取大图的url
            String url=element.getAttribute("src");
            int index=url.lastIndexOf("-");
            pic.setbigurl(url.substring(0,index)+"-sd.jpg");
            try {
                movieService.saveurlpic(pic);
            }catch (Exception e){

            }
        }
    }
}
