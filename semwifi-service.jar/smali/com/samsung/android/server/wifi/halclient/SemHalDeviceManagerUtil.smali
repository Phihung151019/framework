.class public Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;
    }
.end annotation


# static fields
.field private static final KEY_AVAILABLE_COMBINATIONS:Ljava/lang/String; = "availableCombinations"

.field private static final KEY_AVAILABLE_MODES:Ljava/lang/String; = "availableModes"

.field private static final KEY_CHIP_CAPABILITIES:Ljava/lang/String; = "chipCapabilities"

.field private static final KEY_CHIP_ID:Ljava/lang/String; = "chipId"

.field private static final KEY_CONCURRENCY_LIMITS:Ljava/lang/String; = "limits"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_MAX_IFACES:Ljava/lang/String; = "maxIfaces"

.field private static final KEY_TYPES:Ljava/lang/String; = "types"


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

.method private static chipConcurrencyCombinationLimitToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;)Lorg/json/JSONObject;
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
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->maxIfaces:I

    .line 7
    .line 8
    const-string v2, "maxIfaces"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;->types:Ljava/util/List;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    const-string p0, "types"

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method private static chipConcurrencyCombinationToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;)Lorg/json/JSONObject;
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
    new-instance v1, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;->limits:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->chipConcurrencyCombinationLimitToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "limits"

    .line 38
    .line 39
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method private static chipModeToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;)Lorg/json/JSONObject;
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
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;->id:I

    .line 7
    .line 8
    const-string v2, "id"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;->availableCombinations:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->chipConcurrencyCombinationToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string p0, "availableCombinations"

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method private static jsonToChipConcurrencyCombination(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
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
    const-string v1, "limits"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->jsonToChipConcurrencyCombinationLimit(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method private static jsonToChipConcurrencyCombinationLimit(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
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
    const-string v1, "types"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;

    .line 34
    .line 35
    const-string v2, "maxIfaces"

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombinationLimit;-><init>(ILjava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method private static jsonToChipMode(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
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
    const-string v1, "availableCombinations"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->jsonToChipConcurrencyCombination(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipConcurrencyCombination;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 34
    .line 35
    const-string v2, "id"

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;-><init>(ILjava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-object v1
.end method

.method static jsonToStaticChipInfo(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
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
    const-string v1, "chipId"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "chipCapabilities"

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-string v4, "availableModes"

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ge v4, v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->jsonToChipMode(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;

    .line 46
    .line 47
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;-><init>(IJLjava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method static staticChipInfoToJson(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;)Lorg/json/JSONObject;
    .locals 5
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getChipId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "chipId"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "chipCapabilities"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getChipCapabilities()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lorg/json/JSONArray;

    .line 25
    .line 26
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil$StaticChipInfo;->getAvailableModes()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_0
    if-ge v3, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    check-cast v4, Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;

    .line 47
    .line 48
    invoke-static {v4}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManagerUtil;->chipModeToJson(Lcom/samsung/android/server/wifi/halclient/SemWifiChip$ChipMode;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string p0, "availableModes"

    .line 57
    .line 58
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    return-object v0
.end method
