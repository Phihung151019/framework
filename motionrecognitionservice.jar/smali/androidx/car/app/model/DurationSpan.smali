.class public final Landroidx/car/app/model/DurationSpan;
.super Landroidx/car/app/model/CarSpan;
.source "DurationSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/model/DurationSpan$Api26Impl;
    }
.end annotation


# instance fields
.field private final mDurationSeconds:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    .line 112
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .param p1, "durationSeconds"    # J

    .line 106
    invoke-direct {p0}, Landroidx/car/app/model/CarSpan;-><init>()V

    .line 107
    iput-wide p1, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    .line 108
    return-void
.end method

.method public static create(J)Landroidx/car/app/model/DurationSpan;
    .locals 1
    .param p0, "durationSeconds"    # J

    .line 65
    new-instance v0, Landroidx/car/app/model/DurationSpan;

    invoke-direct {v0, p0, p1}, Landroidx/car/app/model/DurationSpan;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/time/Duration;)Landroidx/car/app/model/DurationSpan;
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;

    .line 72
    invoke-static {p0}, Landroidx/car/app/model/DurationSpan$Api26Impl;->create(Ljava/time/Duration;)Landroidx/car/app/model/DurationSpan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Landroidx/car/app/model/DurationSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 99
    return v2

    .line 101
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/model/DurationSpan;

    .line 103
    .local v1, "otherSpan":Landroidx/car/app/model/DurationSpan;
    iget-wide v3, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    iget-wide v5, v1, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDurationSeconds()J
    .locals 2

    .line 78
    iget-wide v0, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 90
    iget-wide v0, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    iget-wide v2, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/car/app/model/DurationSpan;->mDurationSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
