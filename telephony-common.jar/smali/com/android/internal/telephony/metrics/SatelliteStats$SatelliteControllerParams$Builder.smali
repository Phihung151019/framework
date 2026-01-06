.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCarrierRoamingSatelliteConfigVersion:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCountOfAllowedSatelliteAccess:I

.field private blacklist mCountOfDatagramTypeKeepAliveFail:I

.field private blacklist mCountOfDatagramTypeKeepAliveSuccess:I

.field private blacklist mCountOfDatagramTypeLocationSharingFail:I

.field private blacklist mCountOfDatagramTypeLocationSharingSuccess:I

.field private blacklist mCountOfDatagramTypeSosSmsFail:I

.field private blacklist mCountOfDatagramTypeSosSmsSuccess:I

.field private blacklist mCountOfDemoModeIncomingDatagramFail:I

.field private blacklist mCountOfDemoModeIncomingDatagramSuccess:I

.field private blacklist mCountOfDemoModeOutgoingDatagramFail:I

.field private blacklist mCountOfDemoModeOutgoingDatagramSuccess:I

.field private blacklist mCountOfDemoModeSatelliteServiceEnablementsFail:I

.field private blacklist mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

.field private blacklist mCountOfDeprovisionFail:I

.field private blacklist mCountOfDeprovisionSuccess:I

.field private blacklist mCountOfDisallowedSatelliteAccess:I

.field private blacklist mCountOfFailedLocationQueries:I

.field private blacklist mCountOfIncomingDatagramFail:I

.field private blacklist mCountOfIncomingDatagramSuccess:I

.field private blacklist mCountOfIncomingDatagramTypeSmsFail:I

.field private blacklist mCountOfIncomingDatagramTypeSmsSuccess:I

.field private blacklist mCountOfIncomingDatagramTypeSosSmsFail:I

.field private blacklist mCountOfIncomingDatagramTypeSosSmsSuccess:I

.field private blacklist mCountOfOutgoingDatagramFail:I

.field private blacklist mCountOfOutgoingDatagramSuccess:I

.field private blacklist mCountOfOutgoingDatagramTypeSmsFail:I

.field private blacklist mCountOfOutgoingDatagramTypeSmsSuccess:I

.field private blacklist mCountOfP2PSmsAvailableNotificationRemoved:I

.field private blacklist mCountOfP2PSmsAvailableNotificationShown:I

.field private blacklist mCountOfProvisionFail:I

.field private blacklist mCountOfProvisionSuccess:I

.field private blacklist mCountOfSatelliteAccessCheckFail:I

.field private blacklist mCountOfSatelliteAllowedStateChangedEvents:I

.field private blacklist mCountOfSatelliteServiceEnablementsFail:I

.field private blacklist mCountOfSatelliteServiceEnablementsSuccess:I

.field private blacklist mCountOfSuccessfulLocationQueries:I

.field private blacklist mIsNtnOnlyCarrier:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsProvisioned:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxAllowedDataMode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalBatteryChargedTimeSec:I

.field private blacklist mTotalBatteryConsumptionPercent:I

.field private blacklist mTotalServiceUptimeSec:I

.field private blacklist mVersionOfSatelliteAccessConfig:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierId:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierRoamingSatelliteConfigVersion(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierRoamingSatelliteConfigVersion:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfAllowedSatelliteAccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfAllowedSatelliteAccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeKeepAliveFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeKeepAliveSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeLocationSharingFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeLocationSharingSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeSosSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDatagramTypeSosSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeIncomingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeOutgoingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeSatelliteServiceEnablementsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDemoModeSatelliteServiceEnablementsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDeprovisionFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDeprovisionFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDeprovisionSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDeprovisionSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDisallowedSatelliteAccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDisallowedSatelliteAccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfFailedLocationQueries(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfFailedLocationQueries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramTypeSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSmsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramTypeSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSmsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramTypeSosSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSosSmsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingDatagramTypeSosSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSosSmsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramTypeSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramTypeSmsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingDatagramTypeSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramTypeSmsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfP2PSmsAvailableNotificationRemoved(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationRemoved:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfP2PSmsAvailableNotificationShown(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationShown:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfProvisionFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfProvisionFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfProvisionSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfProvisionSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteAccessCheckFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAccessCheckFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteAllowedStateChangedEvents(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAllowedStateChangedEvents:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteServiceEnablementsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsFail:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSatelliteServiceEnablementsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsSuccess:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSuccessfulLocationQueries(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSuccessfulLocationQueries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsNtnOnlyCarrier:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsProvisioned(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsProvisioned:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxAllowedDataMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mMaxAllowedDataMode:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalBatteryChargedTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryChargedTimeSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalBatteryConsumptionPercent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryConsumptionPercent:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalServiceUptimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalServiceUptimeSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVersionOfSatelliteAccessConfig(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mVersionOfSatelliteAccessConfig:Ljava/util/Optional;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsSuccess:I

    .line 401
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsFail:I

    .line 402
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    .line 403
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramFail:I

    .line 404
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramSuccess:I

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramFail:I

    .line 406
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsSuccess:I

    .line 407
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsFail:I

    .line 408
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingSuccess:I

    .line 409
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingFail:I

    .line 414
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalServiceUptimeSec:I

    .line 415
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryConsumptionPercent:I

    .line 416
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryChargedTimeSec:I

    .line 417
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 418
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    .line 419
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramSuccess:I

    .line 420
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramFail:I

    .line 421
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramSuccess:I

    .line 422
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramFail:I

    .line 423
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveSuccess:I

    .line 424
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveFail:I

    .line 425
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfAllowedSatelliteAccess:I

    .line 426
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDisallowedSatelliteAccess:I

    .line 427
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAccessCheckFail:I

    .line 428
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsProvisioned:Ljava/util/Optional;

    .line 429
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierId:Ljava/util/Optional;

    .line 430
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAllowedStateChangedEvents:I

    .line 431
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSuccessfulLocationQueries:I

    .line 432
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfFailedLocationQueries:I

    .line 433
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationShown:I

    .line 434
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationRemoved:I

    .line 435
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsNtnOnlyCarrier:Ljava/util/Optional;

    .line 436
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mVersionOfSatelliteAccessConfig:Ljava/util/Optional;

    .line 443
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierRoamingSatelliteConfigVersion:Ljava/util/Optional;

    .line 444
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mMaxAllowedDataMode:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;
    .locals 3

    .line 899
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 738
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierId:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setCarrierRoamingSatelliteConfigVersion(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 881
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCarrierRoamingSatelliteConfigVersion:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setCountOfAllowedSatelliteAccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 699
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfAllowedSatelliteAccess:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeKeepAliveFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 689
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveFail:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeKeepAliveSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 679
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeKeepAliveSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeLocationSharingFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 541
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingFail:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeLocationSharingSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 530
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeLocationSharingSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeSosSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 520
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsFail:I

    return-object p0
.end method

.method public blacklist setCountOfDatagramTypeSosSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 511
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDatagramTypeSosSmsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeIncomingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 669
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramFail:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 658
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeIncomingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeOutgoingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 648
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramFail:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 637
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeOutgoingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeSatelliteServiceEnablementsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 626
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    return-object p0
.end method

.method public blacklist setCountOfDemoModeSatelliteServiceEnablementsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 615
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDeprovisionFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 578
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDeprovisionFail:I

    return-object p0
.end method

.method public blacklist setCountOfDeprovisionSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 569
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDeprovisionSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfDisallowedSatelliteAccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 710
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfDisallowedSatelliteAccess:I

    return-object p0
.end method

.method public blacklist setCountOfFailedLocationQueries(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 769
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfFailedLocationQueries:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 501
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramFail:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 492
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramTypeSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 870
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSmsFail:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramTypeSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 860
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSmsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramTypeSosSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 830
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSosSmsFail:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingDatagramTypeSosSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 819
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfIncomingDatagramTypeSosSmsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 483
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramFail:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 474
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramTypeSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 850
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramTypeSmsFail:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingDatagramTypeSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 840
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfOutgoingDatagramTypeSmsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfP2PSmsAvailableNotificationRemoved(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 790
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationRemoved:I

    return-object p0
.end method

.method public blacklist setCountOfP2PSmsAvailableNotificationShown(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 779
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfP2PSmsAvailableNotificationShown:I

    return-object p0
.end method

.method public blacklist setCountOfProvisionFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 560
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfProvisionFail:I

    return-object p0
.end method

.method public blacklist setCountOfProvisionSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 551
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfProvisionSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteAccessCheckFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 720
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAccessCheckFail:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteAllowedStateChangedEvents(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 749
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteAllowedStateChangedEvents:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteServiceEnablementsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 464
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsFail:I

    return-object p0
.end method

.method public blacklist setCountOfSatelliteServiceEnablementsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 453
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSatelliteServiceEnablementsSuccess:I

    return-object p0
.end method

.method public blacklist setCountOfSuccessfulLocationQueries(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 760
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mCountOfSuccessfulLocationQueries:I

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 800
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsNtnOnlyCarrier:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setIsProvisioned(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 729
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mIsProvisioned:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setMaxAllowedDataMode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 890
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mMaxAllowedDataMode:Ljava/util/Optional;

    return-object p0
.end method

.method public blacklist setTotalBatteryChargedTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 605
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryChargedTimeSec:I

    return-object p0
.end method

.method public blacklist setTotalBatteryConsumptionPercent(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 596
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalBatteryConsumptionPercent:I

    return-object p0
.end method

.method public blacklist setTotalServiceUptimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 587
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mTotalServiceUptimeSec:I

    return-object p0
.end method

.method public blacklist setVersionOfSatelliteAccessControl(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    .locals 0

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->mVersionOfSatelliteAccessConfig:Ljava/util/Optional;

    return-object p0
.end method
