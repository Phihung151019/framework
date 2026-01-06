.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingCAPC;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final FEATURE_NAME_CONNECTION_PERSONALIZER:Ljava/lang/String; = "connection_personalizer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "connection_personalizer"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
