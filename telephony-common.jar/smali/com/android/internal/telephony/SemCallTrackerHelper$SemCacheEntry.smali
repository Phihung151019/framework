.class public Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;
.super Ljava/lang/Object;
.source "SemCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCallTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemCacheEntry"
.end annotation


# instance fields
.field private blacklist mAudioQuality:I

.field private blacklist mCallDirection:I

.field private blacklist mConnectElapsedTime:J

.field private blacklist mConnectTime:J

.field private blacklist mNamePresent:I

.field private blacklist mNumPresent:I


# direct methods
.method public constructor blacklist <init>(JJIIII)V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-wide p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    .line 390
    iput-wide p3, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    .line 391
    iput p5, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    .line 392
    iput p6, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    .line 393
    iput p7, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    .line 394
    iput p8, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .locals 2

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCacheEntry - isHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 403
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    if-eqz p2, :cond_1

    .line 404
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    const/4 v0, 0x1

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    if-eqz p2, :cond_2

    .line 406
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 407
    iput v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    :cond_2
    if-eqz p2, :cond_3

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    if-eqz p2, :cond_4

    .line 410
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x3

    :goto_2
    iput p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    .line 411
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return-void
.end method


# virtual methods
.method public blacklist getAudioQuality()I
    .locals 0

    .line 435
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return p0
.end method

.method public blacklist getCallDirection()I
    .locals 0

    .line 423
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    return p0
.end method

.method public blacklist getConnectElapsedTime()J
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    return-wide v0
.end method

.method public blacklist getConnectTime()J
    .locals 2

    .line 415
    iget-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getNamePresent()I
    .locals 0

    .line 431
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    return p0
.end method

.method public blacklist getNumPresent()I
    .locals 0

    .line 427
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    return p0
.end method
