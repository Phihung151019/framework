.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwtIoTApInfo"
.end annotation


# instance fields
.field arpLostCount:I

.field bssid:Ljava/lang/String;

.field dataStallCount:I

.field detectionResult:I

.field lastUpdatedTime:J

.field rateDropCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 20
    .line 21
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "bssid"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "detection_result"

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 24
    .line 25
    const-string v1, "arp_lost_count"

    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 32
    .line 33
    const-string v1, "rate_drop_count"

    .line 34
    .line 35
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 40
    .line 41
    const-string v1, "data_stall_count"

    .line 42
    .line 43
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 48
    .line 49
    const-string v1, "time"

    .line 50
    .line 51
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    int-to-long v1, p0

    .line 56
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 57
    .line 58
    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "bssid"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->bssid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "detection_result"

    .line 14
    .line 15
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->detectionResult:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "arp_lost_count"

    .line 21
    .line 22
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->arpLostCount:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "rate_drop_count"

    .line 28
    .line 29
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->rateDropCount:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "data_stall_count"

    .line 35
    .line 36
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->dataStallCount:I

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v1, "time"

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtIoTApInfo;->lastUpdatedTime:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "error in toJson"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v1, "SemWifiTwtMonitor"

    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-object v0
.end method
