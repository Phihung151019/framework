.class public Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectedPackageInfo"
.end annotation


# static fields
.field private static final PREVENTION_NORMAL_DETECTION_COUNT:I = 0x3

.field private static final PREVENTION_NORMAL_OPERATION_TIME_MINUTE:I = 0x1e


# instance fields
.field private mDetectedCount:I

.field private mLastDetectedTime:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPackageNormalOperationTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDetectedCount(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDetectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageNormalOperationTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 14
    iput-object p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 15
    iput p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getTimeString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    return-void
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string v1, "yyyy-MM-dd HH:mm:ss "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private increaseDetectedCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 6
    .line 7
    return-void
.end method

.method private setLastDetectedTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public addPackageNormalOperationTime(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 5
    .line 6
    return v0
.end method

.method public getDetectedCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastDetectedTime()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mLastDetectedTime:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPackageNormalOperationTime()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 2
    .line 3
    return p0
.end method

.method public isPackageNormalOperationTimePrevention()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ge p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public resetDetectedCount()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mDetectedCount:I

    .line 3
    .line 4
    return-void
.end method

.method public resetPackageNormalOperationTime()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->mPackageNormalOperationTime:I

    .line 3
    .line 4
    return-void
.end method

.method public updateDetectedInfo()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->increaseDetectedCount()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getTimeString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->setLastDetectedTime(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
