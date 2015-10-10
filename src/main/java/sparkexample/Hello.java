package sparkexample;

import static spark.Spark.get;

public class Hello {

    public static void main(String[] args) {
        get("/", (req, res) -> "hello,world!");

        get("/index", (request, response) -> {
//            response.body("index page");
            response.redirect("http://www.baidu.com/");
            return null;
        });
    }
}