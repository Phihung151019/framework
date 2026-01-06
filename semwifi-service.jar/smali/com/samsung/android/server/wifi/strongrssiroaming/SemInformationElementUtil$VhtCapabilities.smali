.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VhtCapabilities"
.end annotation


# instance fields
.field private mMaxNumberSpatialStreams:I

.field private mPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mMaxNumberSpatialStreams:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mPresent:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0xbf

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    .line 23
    shl-int/lit8 v0, v0, 0x8

    .line 24
    .line 25
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    aget-byte p1, p1, v1

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;->-$$Nest$smparseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mMaxNumberSpatialStreams:I

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mPresent:Z

    .line 41
    .line 42
    return-void
.end method

.method public getMaxNumberSpatialStreams()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mMaxNumberSpatialStreams:I

    .line 2
    .line 3
    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->mPresent:Z

    .line 2
    .line 3
    return p0
.end method
