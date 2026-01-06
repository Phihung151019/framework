.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BssLoad"
.end annotation


# static fields
.field public static final CHANNEL_UTILIZATION_SCALE:I = 0x100

.field public static final INVALID:I = -0x1

.field public static final MAX_CHANNEL_UTILIZATION:I = 0xff

.field public static final MIN_CHANNEL_UTILIZATION:I


# instance fields
.field public capacity:I

.field public channelUtilization:I

.field public stationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->stationCount:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->channelUtilization:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->capacity:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 2
    .line 3
    const/16 v1, 0xb

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
    const/4 v1, 0x5

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 16
    .line 17
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const v1, 0xffff

    .line 32
    .line 33
    .line 34
    and-int/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->stationCount:I

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->channelUtilization:I

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->capacity:I

    .line 51
    .line 52
    return-void
.end method
