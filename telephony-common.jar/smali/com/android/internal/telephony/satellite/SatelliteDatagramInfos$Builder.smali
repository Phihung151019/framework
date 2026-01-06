.class public final Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
.super Ljava/lang/Object;
.source "SatelliteDatagramInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDatagramDirection:I

.field private blacklist mDatagramSizeBytes:I

.field private blacklist mDatagramTransferTimeMillis:J

.field private blacklist mDatagramType:I

.field private blacklist mResultCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDatagramDirection(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramSizeBytes(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramSizeBytes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramTransferTimeMillis(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramTransferTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDatagramType(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mResultCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramDirection:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramType:I

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mResultCode:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramSizeBytes:I

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramTransferTimeMillis:J

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;
    .locals 2

    .line 111
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;-><init>(Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos-IA;)V

    return-object v0
.end method

.method public blacklist setDatagramDirection(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramDirection:I

    return-object p0
.end method

.method public blacklist setDatagramSizeBytes(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramSizeBytes:I

    return-object p0
.end method

.method public blacklist setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramTransferTimeMillis:J

    return-object p0
.end method

.method public blacklist setDatagramType(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mDatagramType:I

    return-object p0
.end method

.method public blacklist setResultCode(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->mResultCode:I

    return-object p0
.end method
