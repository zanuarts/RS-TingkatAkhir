class NewsModel {
    NewsModel({
        this.news,
    });

    List<News> news;
}

class News {
    News({
        this.newsId,
        this.newsTitle,
        this.newsSub,
        this.newsContent,
    });

    String newsId;
    String newsTitle;
    String newsSub;
    String newsContent;
}