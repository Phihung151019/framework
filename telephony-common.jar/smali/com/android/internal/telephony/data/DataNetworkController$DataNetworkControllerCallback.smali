.class public Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataNetworkControllerCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onAnyDataNetworkExistingChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onCarrierChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onConnectedInternetDataNetworksChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataNetwork;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onDataNetworkConnected(ILandroid/telephony/data/DataProfile;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataServiceBound(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onInternetDataNetworkValidationStatusChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onNrAdvancedCapableByPcoChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onPSAttached()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onPhysicalLinkStatusChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onQosSessionsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public blacklist onSubscriptionPlanOverride()V
    .locals 0

    .line 0
    return-void
.end method
