.class Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;
.super Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;
.source "EmpiricalDistribution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/random/EmpiricalDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamDataAdapter"
.end annotation


# instance fields
.field private inputStream:Ljava/io/BufferedReader;

.field final synthetic this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Ljava/io/BufferedReader;)V
    .locals 1
    .param p2, "in"    # Ljava/io/BufferedReader;

    .line 352
    iput-object p1, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/random/EmpiricalDistribution$DataAdapter;-><init>(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/random/EmpiricalDistribution$1;)V

    .line 354
    iput-object p2, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 355
    return-void
.end method


# virtual methods
.method public computeBinStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 362
    .local v1, "val":D
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_0

    .line 363
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 364
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$200(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v4, v1, v2}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$100(Lorg/apache/commons/math3/random/EmpiricalDistribution;D)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 365
    .local v3, "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    .line 366
    .end local v3    # "stats":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    goto :goto_0

    .line 368
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 369
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 370
    return-void
.end method

.method public computeStats()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 377
    .local v1, "val":D
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    new-instance v4, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v4}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-static {v3, v4}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$302(Lorg/apache/commons/math3/random/EmpiricalDistribution;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 378
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_0

    .line 379
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 380
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->this$0:Lorg/apache/commons/math3/random/EmpiricalDistribution;

    invoke-static {v3}, Lorg/apache/commons/math3/random/EmpiricalDistribution;->access$300(Lorg/apache/commons/math3/random/EmpiricalDistribution;)Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 383
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/math3/random/EmpiricalDistribution$StreamDataAdapter;->inputStream:Ljava/io/BufferedReader;

    .line 384
    return-void
.end method
