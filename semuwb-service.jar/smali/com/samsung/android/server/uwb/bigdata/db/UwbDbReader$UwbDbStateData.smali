.class public Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;
.super Ljava/lang/Object;
.source "UwbDbReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UwbDbStateData"
.end annotation


# instance fields
.field private final mStateChangedTime:J

.field private final mUwbState:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "mUwbState"    # I
    .param p2, "mStateChangedTime"    # J

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mUwbState:I

    .line 151
    iput-wide p2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mStateChangedTime:J

    .line 152
    return-void
.end method


# virtual methods
.method public getStateChangedTime()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mStateChangedTime:J

    return-wide v0
.end method

.method public getUwbState()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mUwbState:I

    return v0
.end method
