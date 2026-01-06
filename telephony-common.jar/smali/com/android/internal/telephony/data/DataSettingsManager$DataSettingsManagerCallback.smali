.class public Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSettingsManagerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onDataEnabledChanged(ZILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataEnabledOverrideChanged(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataRoamingEnabledChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onUserDataEnabledChanged(ZLjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
