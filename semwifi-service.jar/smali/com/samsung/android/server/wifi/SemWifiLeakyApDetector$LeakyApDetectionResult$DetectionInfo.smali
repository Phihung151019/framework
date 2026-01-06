.class Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DetectionInfo"
.end annotation


# instance fields
.field detectionType:I

.field rssi:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->detectionType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->rssi:I

    .line 8
    .line 9
    return-void
.end method

.method public static fromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;

    .line 16
    .line 17
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "type"

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iput v4, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->detectionType:I

    .line 32
    .line 33
    const-string v4, "rssi"

    .line 34
    .line 35
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->rssi:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "type"

    .line 7
    .line 8
    iget v2, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->detectionType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "rssi"

    .line 14
    .line 15
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector$LeakyApDetectionResult$DetectionInfo;->rssi:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
