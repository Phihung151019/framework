.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingCASR;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final FEATURE_NAME_FOR_SRR:Ljava/lang/String; = "strong_rssi_roaming"


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

.method public static sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setExtra(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "strong_rssi_roaming"

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
