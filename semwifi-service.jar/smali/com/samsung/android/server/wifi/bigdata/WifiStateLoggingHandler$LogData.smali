.class Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogData"
.end annotation


# instance fields
.field final durationOfRemainingPrevStateMs:J

.field final isUserAction:Z

.field final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->packageName:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->isUserAction:Z

    .line 5
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->durationOfRemainingPrevStateMs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;-><init>(Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "-"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiStateLoggingHandler$LogData;->durationOfRemainingPrevStateMs:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
