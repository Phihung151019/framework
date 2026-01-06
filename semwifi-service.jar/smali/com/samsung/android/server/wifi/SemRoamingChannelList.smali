.class public Lcom/samsung/android/server/wifi/SemRoamingChannelList;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;,
        Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;
    }
.end annotation


# static fields
.field private static final HIT_ARRAY_LEN:I = 0x8

.field private static final JTAG_CURRENT_SLOT:Ljava/lang/String; = "current_slot"

.field private static final JTAG_FREQ:Ljava/lang/String; = "frequency"

.field private static final JTAG_HITMAP:Ljava/lang/String; = "hitmap"

.field private static final JTAG_HIT_TIME:Ljava/lang/String; = "hit_time"

.field private static final JTAG_LAST_UPDATED_TIME:Ljava/lang/String; = "last_updated_time"

.field private static final JTAG_NETWORK_KEY:Ljava/lang/String; = "network_Key"

.field private static final JTAG_REMAIN_TIME:Ljava/lang/String; = "remain_time"

.field private static final JTAG_TOTAL_COUNT:Ljava/lang/String; = "total_count"

.field private static final TAG:Ljava/lang/String; = "SemRoamingChannelList"

.field private static final TIME_INTERVAL_PER_SLOT:J = 0xa4cb80L


# instance fields
.field private mAvailableChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChannelDataComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryCode:Ljava/lang/String;

.field private mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdatedTime:J

.field private mNetworkKey:Ljava/lang/String;

.field private mRemainingTime:J

.field private mSlotIdx:I

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic $r8$lambda$CgRYOWy9CclBNX7gyqG6IHPGYcM(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->lambda$getFrequentlyUsedList$0(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$1;-><init>(Lcom/samsung/android/server/wifi/SemRoamingChannelList;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mChannelDataComparator:Ljava/util/Comparator;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 20
    .line 21
    const-wide/16 p1, 0x0

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 24
    .line 25
    const-wide/32 p1, 0xa4cb80

    .line 26
    .line 27
    .line 28
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 42
    .line 43
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    .line 49
    .line 50
    return-void
.end method

.method public static convertBand(I)I
    .locals 4

    .line 1
    const/4 v0, 0x7

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    sget-object v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Current band is ["

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "]. Use default band. "

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :pswitch_0
    const/16 p0, 0x9

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_1
    const/16 p0, 0xe

    .line 36
    .line 37
    return p0

    .line 38
    :pswitch_2
    const/16 p0, 0x8

    .line 39
    .line 40
    return p0

    .line 41
    :pswitch_3
    const/16 p0, 0xf

    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_4
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :pswitch_5
    const/4 p0, 0x6

    .line 47
    return p0

    .line 48
    :pswitch_6
    return v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromJson(Lorg/json/JSONObject;Lcom/samsung/android/server/wifi/SemWifiInjector;)Lcom/samsung/android/server/wifi/SemRoamingChannelList;
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;

    .line 2
    .line 3
    const-string v1, "network_Key"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "last_updated_time"

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iput-wide v3, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 23
    .line 24
    const-string p1, "current_slot"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 32
    .line 33
    const-string p1, "remain_time"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 40
    .line 41
    const-string p1, "hitmap"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->setHitMap(Lorg/json/JSONArray;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v1, " RCL fromJson : "

    .line 55
    .line 56
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method private getHitMap()Lorg/json/JSONArray;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->toJson(I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object v0
.end method

.method private increaseHitCount(IJ)V
    .locals 3

    .line 1
    const/16 v0, 0x96c

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    cmp-long v1, p2, v1

    .line 28
    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    iput-wide p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    .line 32
    .line 33
    :cond_2
    iget-object p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    .line 34
    .line 35
    iget p3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 36
    .line 37
    aget v1, p2, p3

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    aput v1, p2, p3

    .line 42
    .line 43
    iget p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    iput p2, v0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static synthetic lambda$getFrequentlyUsedList$0(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private moveCurSlot()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iput v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 35
    .line 36
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->timeSlot:[I

    .line 37
    .line 38
    iget v4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 39
    .line 40
    aget v5, v3, v4

    .line 41
    .line 42
    iget v6, v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 43
    .line 44
    sub-int/2addr v6, v5

    .line 45
    iput v6, v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 46
    .line 47
    aput v2, v3, v4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method private setHitMap(Lorg/json/JSONArray;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    const-string v4, "frequency"

    .line 19
    .line 20
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->fromJson(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getFrequentlyUsedList(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "getFrequentlyUsedChannel, but no data"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 60
    .line 61
    iget v3, v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 62
    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 83
    .line 84
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->hitTime:J

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 91
    .line 92
    iget v2, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->totalCount:I

    .line 93
    .line 94
    invoke-direct {v3, v4, v5, v6, v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;-><init>(IJI)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mChannelDataComparator:Ljava/util/Comparator;

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 107
    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 117
    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p1, " WifiScanner is null"

    .line 123
    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    new-instance p0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 134
    .line 135
    if-eqz v1, :cond_4

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const/4 v1, 0x0

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    :cond_5
    sget-object v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 156
    .line 157
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v5, " mCountryCode is changed [ "

    .line 162
    .line 163
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v3, " > "

    .line 170
    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v3, " ]"

    .line 178
    .line 179
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mCountryCode:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 192
    .line 193
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->convertBand(I)I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiScanner;->getAvailableChannels(I)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    .line 202
    .line 203
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    .line 204
    .line 205
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-eqz p2, :cond_7

    .line 210
    .line 211
    sget-object p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 212
    .line 213
    const-string p1, " There are no available channels."

    .line 214
    .line 215
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    new-instance p0, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    return-object p0

    .line 224
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    :goto_2
    if-lez p2, :cond_9

    .line 229
    .line 230
    add-int/lit8 p2, p2, -0x1

    .line 231
    .line 232
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mAvailableChannels:Ljava/util/List;

    .line 233
    .line 234
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    .line 239
    .line 240
    iget v2, v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    .line 241
    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_8

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_8
    sget-object v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v3, " This is not a supported channel ["

    .line 258
    .line 259
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    .line 267
    .line 268
    iget v3, v3, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;->frequency:I

    .line 269
    .line 270
    const-string v4, "]"

    .line 271
    .line 272
    invoke-static {v4, v3, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    int-to-long p1, p1

    .line 296
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    new-instance p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$$ExternalSyntheticLambda0;

    .line 301
    .line 302
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    check-cast p0, Ljava/util/List;

    .line 318
    .line 319
    return-object p0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

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
    const-string v1, "last_updated_time"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "network_Key"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "current_slot"

    .line 21
    .line 22
    iget v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "remain_time"

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "hitmap"

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->getHitMap()Lorg/json/JSONArray;

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
    sget-object v1, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "error in RCL toJson"

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "HitChannelMap : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mHitChannelMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    const-string v3, "\n"

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "freq : "

    .line 41
    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, ", "

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList$HitArray;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 79
    .line 80
    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 81
    .line 82
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    .line 86
    .line 87
    new-instance v2, Ljava/util/Date;

    .line 88
    .line 89
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 90
    .line 91
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mNetworkKey:Ljava/lang/String;

    .line 101
    .line 102
    iget v4, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mSlotIdx:I

    .line 103
    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 109
    .line 110
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    filled-new-array {v3, v4, v1, p0, v0}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string v0, "NetworkKey: %s, slotIdx: %d, LastUpdatedTime: %s, RemainTime: %d%n%s"

    .line 119
    .line 120
    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method

.method public update(JJI)V
    .locals 5

    .line 1
    :goto_0
    const-wide/32 v0, 0xa4cb80

    .line 2
    .line 3
    .line 4
    cmp-long v2, p3, v0

    .line 5
    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    sub-long/2addr p3, v0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 14
    .line 15
    cmp-long v4, v2, p3

    .line 16
    .line 17
    if-lez v4, :cond_1

    .line 18
    .line 19
    sub-long/2addr v2, p3

    .line 20
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    cmp-long v2, v2, p3

    .line 24
    .line 25
    if-gez v2, :cond_2

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 31
    .line 32
    sub-long/2addr v0, p3

    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->moveCurSlot()V

    .line 38
    .line 39
    .line 40
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mRemainingTime:J

    .line 41
    .line 42
    :goto_1
    invoke-direct {p0, p5, p1, p2}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->increaseHitCount(IJ)V

    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->mLastUpdatedTime:J

    .line 46
    .line 47
    return-void
.end method

.method public updateHitCount(I)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->increaseHitCount(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
