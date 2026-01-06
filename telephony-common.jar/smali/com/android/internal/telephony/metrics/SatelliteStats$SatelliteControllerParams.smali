.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteControllerParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;
    }
.end annotation


# static fields
.field private static blacklist sCarrierId:I = -0x1

.field private static blacklist sCarrierRoamingSatelliteConfigVersion:I

.field private static blacklist sIsNtnOnlyCarrier:Z

.field private static blacklist sIsProvisioned:Z

.field private static blacklist sMaxAllowedDataMode:I

.field private static blacklist sVersionOfSatelliteAccessConfig:I


# instance fields
.field private final blacklist mCountOfAllowedSatelliteAccess:I

.field private final blacklist mCountOfDatagramTypeKeepAliveFail:I

.field private final blacklist mCountOfDatagramTypeKeepAliveSuccess:I

.field private final blacklist mCountOfDatagramTypeLocationSharingFail:I

.field private final blacklist mCountOfDatagramTypeLocationSharingSuccess:I

.field private final blacklist mCountOfDatagramTypeSosSmsFail:I

.field private final blacklist mCountOfDatagramTypeSosSmsSuccess:I

.field private final blacklist mCountOfDemoModeIncomingDatagramFail:I

.field private final blacklist mCountOfDemoModeIncomingDatagramSuccess:I

.field private final blacklist mCountOfDemoModeOutgoingDatagramFail:I

.field private final blacklist mCountOfDemoModeOutgoingDatagramSuccess:I

.field private final blacklist mCountOfDemoModeSatelliteServiceEnablementsFail:I

.field private final blacklist mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

.field private final blacklist mCountOfDeprovisionFail:I

.field private final blacklist mCountOfDeprovisionSuccess:I

.field private final blacklist mCountOfDisallowedSatelliteAccess:I

.field private final blacklist mCountOfFailedLocationQueries:I

.field private final blacklist mCountOfIncomingDatagramFail:I

.field private final blacklist mCountOfIncomingDatagramSuccess:I

.field private final blacklist mCountOfIncomingDatagramTypeSmsFail:I

.field private final blacklist mCountOfIncomingDatagramTypeSmsSuccess:I

.field private final blacklist mCountOfIncomingDatagramTypeSosSmsFail:I

.field private final blacklist mCountOfIncomingDatagramTypeSosSmsSuccess:I

.field private final blacklist mCountOfOutgoingDatagramFail:I

.field private final blacklist mCountOfOutgoingDatagramSuccess:I

.field private final blacklist mCountOfOutgoingDatagramTypeSmsFail:I

.field private final blacklist mCountOfOutgoingDatagramTypeSmsSuccess:I

.field private final blacklist mCountOfP2PSmsAvailableNotificationRemoved:I

.field private final blacklist mCountOfP2PSmsAvailableNotificationShown:I

.field private final blacklist mCountOfProvisionFail:I

.field private final blacklist mCountOfProvisionSuccess:I

.field private final blacklist mCountOfSatelliteAccessCheckFail:I

.field private final blacklist mCountOfSatelliteAllowedStateChangedEvents:I

.field private final blacklist mCountOfSatelliteServiceEnablementsFail:I

.field private final blacklist mCountOfSatelliteServiceEnablementsSuccess:I

.field private final blacklist mCountOfSuccessfulLocationQueries:I

.field private final blacklist mTotalBatteryChargedTimeSec:I

.field private final blacklist mTotalBatteryConsumptionPercent:I

.field private final blacklist mTotalServiceUptimeSec:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfSatelliteServiceEnablementsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsSuccess:I

    .line 121
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfSatelliteServiceEnablementsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsFail:I

    .line 123
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramSuccess:I

    .line 124
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramFail:I

    .line 125
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramSuccess:I

    .line 126
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramFail:I

    .line 127
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeSosSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsSuccess:I

    .line 128
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeSosSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsFail:I

    .line 129
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeLocationSharingSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingSuccess:I

    .line 131
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeLocationSharingFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingFail:I

    .line 133
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfProvisionSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfProvisionSuccess:I

    .line 134
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfProvisionFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfProvisionFail:I

    .line 135
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDeprovisionSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDeprovisionSuccess:I

    .line 136
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDeprovisionFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDeprovisionFail:I

    .line 137
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmTotalServiceUptimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalServiceUptimeSec:I

    .line 138
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmTotalBatteryConsumptionPercent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryConsumptionPercent:I

    .line 139
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmTotalBatteryChargedTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryChargedTimeSec:I

    .line 140
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeSatelliteServiceEnablementsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 142
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeSatelliteServiceEnablementsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    .line 144
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramSuccess:I

    .line 146
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeOutgoingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramFail:I

    .line 148
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramSuccess:I

    .line 150
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDemoModeIncomingDatagramFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramFail:I

    .line 152
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeKeepAliveSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveSuccess:I

    .line 154
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDatagramTypeKeepAliveFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveFail:I

    .line 156
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfAllowedSatelliteAccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfAllowedSatelliteAccess:I

    .line 158
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfDisallowedSatelliteAccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDisallowedSatelliteAccess:I

    .line 160
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfSatelliteAccessCheckFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAccessCheckFail:I

    .line 164
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmIsProvisioned(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmIsProvisioned(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sIsProvisioned:Z

    .line 169
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierId:I

    .line 173
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfSatelliteAllowedStateChangedEvents(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAllowedStateChangedEvents:I

    .line 175
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfSuccessfulLocationQueries(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSuccessfulLocationQueries:I

    .line 177
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfFailedLocationQueries(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfFailedLocationQueries:I

    .line 179
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfP2PSmsAvailableNotificationShown(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationShown:I

    .line 181
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfP2PSmsAvailableNotificationRemoved(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationRemoved:I

    .line 185
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 186
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sIsNtnOnlyCarrier:Z

    .line 189
    :cond_2
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmVersionOfSatelliteAccessConfig(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 190
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmVersionOfSatelliteAccessConfig(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sVersionOfSatelliteAccessConfig:I

    .line 194
    :cond_3
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramTypeSosSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsSuccess:I

    .line 196
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramTypeSosSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsFail:I

    .line 198
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramTypeSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsSuccess:I

    .line 200
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramTypeSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsFail:I

    .line 201
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramTypeSmsSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsSuccess:I

    .line 203
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramTypeSmsFail(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsFail:I

    .line 206
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCarrierRoamingSatelliteConfigVersion(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 207
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmCarrierRoamingSatelliteConfigVersion(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierRoamingSatelliteConfigVersion:I

    .line 211
    :cond_4
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmMaxAllowedDataMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 212
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->-$$Nest$fgetmMaxAllowedDataMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sMaxAllowedDataMode:I

    :cond_5
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;)V

    return-void
.end method

.method public static blacklist getCarrierId()I
    .locals 1

    .line 333
    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierId:I

    return v0
.end method

.method public static blacklist getCarrierRoamingSatelliteConfigVersion()I
    .locals 1

    .line 389
    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierRoamingSatelliteConfigVersion:I

    return v0
.end method

.method public static blacklist getMaxAllowedDataMode()I
    .locals 1

    .line 393
    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sMaxAllowedDataMode:I

    return v0
.end method

.method public static blacklist getVersionSatelliteAccessConfig()I
    .locals 1

    .line 361
    sget v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sVersionOfSatelliteAccessConfig:I

    return v0
.end method

.method public static blacklist isNtnOnlyCarrier()Z
    .locals 1

    .line 357
    sget-boolean v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sIsNtnOnlyCarrier:Z

    return v0
.end method

.method public static blacklist isProvisioned()Z
    .locals 1

    .line 329
    sget-boolean v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sIsProvisioned:Z

    return v0
.end method


# virtual methods
.method public blacklist getCountOfAllowedSatelliteAccess()I
    .locals 0

    .line 317
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfAllowedSatelliteAccess:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeKeepAliveFail()I
    .locals 0

    .line 313
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveFail:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeKeepAliveSuccess()I
    .locals 0

    .line 309
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveSuccess:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeLocationSharingFail()I
    .locals 0

    .line 253
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingFail:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeLocationSharingSuccess()I
    .locals 0

    .line 249
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingSuccess:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeSosSmsFail()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsFail:I

    return p0
.end method

.method public blacklist getCountOfDatagramTypeSosSmsSuccess()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsSuccess:I

    return p0
.end method

.method public blacklist getCountOfDemoModeIncomingDatagramFail()I
    .locals 0

    .line 305
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramFail:I

    return p0
.end method

.method public blacklist getCountOfDemoModeIncomingDatagramSuccess()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfDemoModeOutgoingDatagramFail()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramFail:I

    return p0
.end method

.method public blacklist getCountOfDemoModeOutgoingDatagramSuccess()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfDemoModeSatelliteServiceEnablementsFail()I
    .locals 0

    .line 289
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    return p0
.end method

.method public blacklist getCountOfDemoModeSatelliteServiceEnablementsSuccess()I
    .locals 0

    .line 285
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    return p0
.end method

.method public blacklist getCountOfDeprovisionFail()I
    .locals 0

    .line 269
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDeprovisionFail:I

    return p0
.end method

.method public blacklist getCountOfDeprovisionSuccess()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDeprovisionSuccess:I

    return p0
.end method

.method public blacklist getCountOfDisallowedSatelliteAccess()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDisallowedSatelliteAccess:I

    return p0
.end method

.method public blacklist getCountOfFailedLocationQueries()I
    .locals 0

    .line 345
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfFailedLocationQueries:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramFail()I
    .locals 0

    .line 237
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramFail:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramSuccess()I
    .locals 0

    .line 233
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramTypeSmsFail()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsFail:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramTypeSmsSuccess()I
    .locals 0

    .line 381
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsSuccess:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramTypeSosSmsFail()I
    .locals 0

    .line 369
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsFail:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramTypeSosSmsSuccess()I
    .locals 0

    .line 365
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsSuccess:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramFail()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramFail:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramSuccess()I
    .locals 0

    .line 225
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramTypeSmsFail()I
    .locals 0

    .line 377
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsFail:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramTypeSmsSuccess()I
    .locals 0

    .line 373
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsSuccess:I

    return p0
.end method

.method public blacklist getCountOfP2PSmsAvailableNotificationRemoved()I
    .locals 0

    .line 353
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationRemoved:I

    return p0
.end method

.method public blacklist getCountOfP2PSmsAvailableNotificationShown()I
    .locals 0

    .line 349
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationShown:I

    return p0
.end method

.method public blacklist getCountOfProvisionFail()I
    .locals 0

    .line 261
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfProvisionFail:I

    return p0
.end method

.method public blacklist getCountOfProvisionSuccess()I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfProvisionSuccess:I

    return p0
.end method

.method public blacklist getCountOfSatelliteAccessCheckFail()I
    .locals 0

    .line 325
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAccessCheckFail:I

    return p0
.end method

.method public blacklist getCountOfSatelliteAllowedStateChangedEvents()I
    .locals 0

    .line 337
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAllowedStateChangedEvents:I

    return p0
.end method

.method public blacklist getCountOfSatelliteServiceEnablementsFail()I
    .locals 0

    .line 221
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsFail:I

    return p0
.end method

.method public blacklist getCountOfSatelliteServiceEnablementsSuccess()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsSuccess:I

    return p0
.end method

.method public blacklist getCountOfSuccessfulLocationQueries()I
    .locals 0

    .line 341
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSuccessfulLocationQueries:I

    return p0
.end method

.method public blacklist getTotalBatteryChargedTimeSec()I
    .locals 0

    .line 281
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryChargedTimeSec:I

    return p0
.end method

.method public blacklist getTotalBatteryConsumptionPercent()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryConsumptionPercent:I

    return p0
.end method

.method public blacklist getTotalServiceUptimeSec()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalServiceUptimeSec:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerParams(, countOfSatelliteServiceEnablementsSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteServiceEnablementsFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteServiceEnablementsFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingDatagramFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDatagramTypeSosSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsSuccess:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeSosSmsFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDatagramTypeLocationSharing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingSuccess:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeLocationSharingFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceUptimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalServiceUptimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryConsumptionPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryConsumptionPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", batteryChargedTimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mTotalBatteryChargedTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeSatelliteServiceEnablementsSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeSatelliteServiceEnablementsFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeSatelliteServiceEnablementsFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeOutgoingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeOutgoingDatagramFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeOutgoingDatagramFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeIncomingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDemoModeIncomingDatagramFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDemoModeIncomingDatagramFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDatagramTypeKeepAliveSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDatagramTypeKeepAliveFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDatagramTypeKeepAliveFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfAllowedSatelliteAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfAllowedSatelliteAccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDisallowedSatelliteAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfDisallowedSatelliteAccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteAccessCheckFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAccessCheckFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sIsProvisioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSatelliteAllowedStateChangedEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSatelliteAllowedStateChangedEvents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfSuccessfulLocationQueries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfSuccessfulLocationQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfFailedLocationQueries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfFailedLocationQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfP2PSmsAvailableNotificationShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationShown:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfP2PSmsAvailableNotificationRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfP2PSmsAvailableNotificationRemoved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", versionOfSatelliteAccessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sVersionOfSatelliteAccessConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramTypeSosSmsSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramTypeSosSmsFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSosSmsFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingDatagramTypeSmsSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingDatagramTypeSmsFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfOutgoingDatagramTypeSmsFail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramTypeSmsSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingDatagramTypeSmsFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->mCountOfIncomingDatagramTypeSmsFail:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", carrierRoamingSatelliteConfigVersion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sCarrierRoamingSatelliteConfigVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", maxAllowedDataMode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->sMaxAllowedDataMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
