.class public Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final CLOUD_GAMING:I = 0x0

.field public static final INDEX_CLOUD_GAME_DETECTED:I = 0x3

.field public static final INDEX_MULTI_TYPE_DETECTED:I = 0x0

.field public static final INDEX_NRT_SERVICE_DETECTED:I = 0x5

.field public static final INDEX_NRT_SERVICE_TYPE:I = 0x7

.field public static final INDEX_QOS_RANK:I = 0x2

.field public static final INDEX_RT_SERVICE_DETECTED:I = 0x4

.field public static final INDEX_RT_SERVICE_TYPE:I = 0x6

.field public static final INDEX_SERVICE_CHANGE:I = 0x1

.field public static final INDEX_TWT_BENEFICIAL:I = 0x8

.field public static LATENCY_REQ_NRT:[I = null

.field public static LATENCY_REQ_RT:[I = null

.field public static final NONREALTIME:I = 0x2

.field public static final NRT_FILE_TRANSFER:I = 0x0

.field public static final NRT_IDLE:I = 0x3

.field public static final NRT_VIDEO:I = 0x1

.field public static final REALTIME:I = 0x1

.field public static final RT_AUDIO_CALL:I = 0x2

.field public static final RT_MOBILE_GAME:I = 0x0

.field public static final RT_VIDEO_CALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemServiceInfo"

.field public static final TCP_PACKET:I = 0x1

.field public static final UDP_PACKET:I = 0x2

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private mBurstLenPreMav:I

.field private mBurstMaxLvlPreMav:I

.field private mL1ServiceType:I

.field private mL2ServiceType:I

.field private mNsdResults:[I

.field private mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

.field private mTrafficIndex:I

.field private mUsageStatsPackageName:Ljava/lang/String;

.field private mValleyLenPreMav:I

.field private trackerActivated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    filled-new-array {v1, v1, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_RT:[I

    .line 10
    .line 11
    const/16 v0, 0x30

    .line 12
    .line 13
    filled-new-array {v1, v1, v0, v1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_NRT:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "default"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    .line 22
    .line 23
    return-void
.end method

.method private setNsdResults([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    .line 2
    .line 3
    return-void
.end method

.method private setServiceType(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public getMainCategoryServiceType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL1ServiceType:I

    .line 2
    .line 3
    return p0
.end method

.method public getNetworkServiceDetectionResults()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mNsdResults:[I

    .line 15
    .line 16
    return-object p0

    .line 17
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getSubCategoryServiceType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mL2ServiceType:I

    .line 2
    .line 3
    return p0
.end method

.method public getTrackerStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->trackerActivated:Z

    .line 2
    .line 3
    return p0
.end method

.method public getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTrafficInfo()[I
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    .line 4
    .line 5
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, p0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getUsageStatsPackage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public initializeNetworkServiceDetectionResults([I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setNsdResults([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public initializeServiceType()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setServiceType(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setTrackerStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->trackerActivated:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTrafficData(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 2
    .line 3
    return-void
.end method

.method public setTrafficInfo(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mTrafficIndex:I

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mValleyLenPreMav:I

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstLenPreMav:I

    .line 6
    .line 7
    iput p4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mBurstMaxLvlPreMav:I

    .line 8
    .line 9
    return-void
.end method

.method public setUsageStatsPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->mUsageStatsPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public updateNetworkServiceDetectionResults([I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setNsdResults([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateServiceType(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setServiceType(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
