.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeakyApDetectionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;
    }
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field detectionInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field lastUpdatedTime:J

.field leakyApDeterminedType:I

.field oui:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->oui:Ljava/lang/String;

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectionInfoArray:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;-><init>()V

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
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "oui"

    .line 17
    .line 18
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->oui:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "time"

    .line 25
    .line 26
    const-wide/16 v2, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 33
    .line 34
    const-string v1, "determined_type"

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 42
    .line 43
    const-string v1, "detection_info"

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->fromJson(Lorg/json/JSONArray;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iput-object p0, v0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectionInfoArray:Ljava/util/List;

    .line 54
    .line 55
    return-object v0
.end method

.method private getDetectionInfoJsonArray()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->detectionInfoArray:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->toJson()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
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
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->bssid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "oui"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->oui:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "time"

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->lastUpdatedTime:J

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "determined_type"

    .line 28
    .line 29
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->leakyApDeterminedType:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "detection_info"

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;->getDetectionInfoJsonArray()Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v2, "error in toJson"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v1, "SemWifiLeakyApDetector"

    .line 64
    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
