.class public Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;
.super Ljava/lang/Object;
.source "UwbDbReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UwbDbUsageData"
.end annotation


# instance fields
.field private final mChannelNumber:I

.field private final mPackageName:Ljava/lang/String;

.field private final mRangingDuration:J

.field private final mServiceType:I

.field private final mSessionId:I

.field private final mUpdatedTime:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJJ)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceType"    # I
    .param p4, "channelNumber"    # I
    .param p5, "rangingDuration"    # J
    .param p7, "updatedTime"    # J

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mSessionId:I

    .line 113
    iput-object p2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mPackageName:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mServiceType:I

    .line 115
    iput p4, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mChannelNumber:I

    .line 116
    iput-wide p5, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mRangingDuration:J

    .line 117
    iput-wide p7, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mUpdatedTime:J

    .line 118
    return-void
.end method


# virtual methods
.method public getChannelNumber()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mChannelNumber:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRangingDurationTime()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mRangingDuration:J

    return-wide v0
.end method

.method public getServiceType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mServiceType:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mSessionId:I

    return v0
.end method

.method public getUpdatedTime()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;->mUpdatedTime:J

    return-wide v0
.end method
