.class public Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;
.super Ljava/lang/Object;
.source "UwbExtAdvertiseManager.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbExtAdvertiseManager"

.field private static final TIME_THRESHOLD:I = 0x1388


# instance fields
.field private final mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUwbExtPointingStateManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mUwbExtPointingStateManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;

    .line 29
    return-void
.end method

.method private addExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    .locals 3
    .param p1, "macAddress"    # J

    .line 99
    new-instance v0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;-><init>(J)V

    .line 100
    .local v0, "advertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object v0
.end method

.method private checkAndRemoveStaleAdvertiseTarget([B)V
    .locals 5
    .param p1, "macAddressBytes"    # [B

    .line 117
    invoke-static {p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->macAddressByteArrayToLong([B)J

    move-result-wide v0

    .line 118
    .local v0, "macAddress":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->getExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    move-result-object v2

    .line 119
    .local v2, "uwbExtAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    if-nez v2, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->isWithinTimeThreshold(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    invoke-static {p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->macAddressByteArrayToLong([B)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->removeExtAdvertiseTarget(J)V

    .line 125
    :cond_1
    return-void
.end method

.method private checkAndRemoveStaleAllAdvertiseTargets(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    .line 134
    .local v2, "extAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->isWithinTimeThreshold(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 137
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;>;"
    .end local v2    # "extAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method

.method private getExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    .locals 2
    .param p1, "macAddress"    # J

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->isExtAdvertiseTargetExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getOrAddExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    .locals 2
    .param p1, "macAddress"    # J

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->isExtAdvertiseTargetExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    .local v0, "uwbAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    goto :goto_0

    .line 91
    .end local v0    # "uwbAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->addExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    move-result-object v0

    .line 93
    .restart local v0    # "uwbAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    :goto_0
    return-object v0
.end method

.method private isExtAdvertiseTargetExist(J)Z
    .locals 2
    .param p1, "macAddress"    # J

    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWithinTimeThreshold(Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;)Z
    .locals 6
    .param p1, "uwbExtAdvertiseTarget"    # Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->getLastMeasuredTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 143
    const/4 v2, 0x0

    return v2

    .line 145
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private updateAdvertiseTargetInfo(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 5
    .param p1, "postProcessedOwrAoaMeasurement"    # Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, "currentTime":J
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getMacAddress()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->macAddressByteArrayToLong([B)J

    move-result-wide v2

    .line 107
    .local v2, "macAddress":J
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->getOrAddExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    move-result-object v4

    .line 108
    .local v4, "uwbExtAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    invoke-virtual {v4, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->updateTargetFromPostProcessedData(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 109
    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->setLastMeasuredTime(J)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCheckPointedTarget(Landroid/os/PersistableBundle;)Z
    .locals 5
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 36
    nop

    .line 37
    invoke-static {p1}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;

    move-result-object v0

    .line 39
    .local v0, "advertisePointedTarget":Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/AdvertisePointedTarget;->getMacAddress()Landroid/uwb/UwbAddress;

    move-result-object v1

    .line 40
    .local v1, "uwbAddress":Landroid/uwb/UwbAddress;
    nop

    .line 41
    invoke-virtual {v1}, Landroid/uwb/UwbAddress;->toBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->macAddressByteArrayToLong([B)J

    move-result-wide v2

    .line 40
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->getExtAdvertiseTarget(J)Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;

    move-result-object v2

    .line 42
    .local v2, "uwbExtAdvertiseTarget":Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 43
    return v3

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mUwbExtPointingStateManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->updatePointingState()V

    .line 51
    iget-object v4, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mUwbExtPointingStateManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/advertisement/UwbExtPointingStateManager;->isPointingState()Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    return v3

    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->isWithinCriterionAngle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    return v3

    .line 61
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseTarget;->isWithinCriterionVariance()Z

    move-result v4

    if-nez v4, :cond_3

    .line 62
    return v3

    .line 68
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public removeExtAdvertiseTarget(J)V
    .locals 2
    .param p1, "macAddress"    # J

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->mExtAdvertiseTargetMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public updateExtAdvertiseTarget(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 1
    .param p1, "postProcessedOwrAoaMeasurement"    # Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 72
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getMacAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->checkAndRemoveStaleAdvertiseTarget([B)V

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->updateAdvertiseTargetInfo(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 74
    return-void
.end method
