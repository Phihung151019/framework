.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeCapabilities"
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
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mMaxNumberSpatialStreams:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mPresent:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ne v0, v1, :cond_2

    .line 6
    .line 7
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 8
    .line 9
    const/16 v2, 0x23

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 15
    .line 16
    array-length v0, v0

    .line 17
    const/16 v2, 0x15

    .line 18
    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 23
    .line 24
    const/16 v2, 0x12

    .line 25
    .line 26
    aget-byte v0, v0, v2

    .line 27
    .line 28
    and-int/2addr v0, v1

    .line 29
    shl-int/lit8 v0, v0, 0x8

    .line 30
    .line 31
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 32
    .line 33
    const/16 v2, 0x11

    .line 34
    .line 35
    aget-byte p1, p1, v2

    .line 36
    .line 37
    and-int/2addr p1, v1

    .line 38
    add-int/2addr v0, p1

    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;->-$$Nest$smparseMaxNumberSpatialStreamsFromMcsMap(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mMaxNumberSpatialStreams:I

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mPresent:Z

    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public getMaxNumberSpatialStreams()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mMaxNumberSpatialStreams:I

    .line 2
    .line 3
    return p0
.end method

.method public isPresent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->mPresent:Z

    .line 2
    .line 3
    return p0
.end method
