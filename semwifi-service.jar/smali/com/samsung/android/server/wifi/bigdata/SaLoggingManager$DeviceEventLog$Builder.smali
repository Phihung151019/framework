.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->dimension:Ljava/util/HashMap;

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->extraValue:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->longValue:Ljava/lang/Long;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->intValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public setValue(J)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->logData:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->intValue:Ljava/lang/Integer;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;->longValue:Ljava/lang/Long;

    return-object p0
.end method
