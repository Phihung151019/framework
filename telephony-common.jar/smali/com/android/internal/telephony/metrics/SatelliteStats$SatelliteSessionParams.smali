.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCountOfAutoExitDueToScreenOff:I

.field private final blacklist mCountOfAutoExitDueToTnNetwork:I

.field private final blacklist mCountOfIncomingDatagramFailed:I

.field private final blacklist mCountOfIncomingDatagramSuccess:I

.field private final blacklist mCountOfOutgoingDatagramFailed:I

.field private final blacklist mCountOfOutgoingDatagramSuccess:I

.field private final blacklist mCountOfSatelliteNotificationDisplayed:I

.field private final blacklist mInitializationProcessingTimeMillis:J

.field private final blacklist mIsDemoMode:Z

.field private final blacklist mIsEmergency:Z

.field private final blacklist mIsNtnOnlyCarrier:Z

.field private final blacklist mMaxInactivityDurationSec:I

.field private final blacklist mMaxNtnSignalStrengthLevel:I

.field private final blacklist mSatelliteServiceInitializationResult:I

.field private final blacklist mSatelliteTechnology:I

.field private final blacklist mSessionDurationSec:I

.field private final blacklist mTerminationProcessingTimeMillis:J

.field private final blacklist mTerminationResult:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)V
    .locals 2
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

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteServiceInitializationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    .line 999
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteTechnology(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteTechnology:I

    .line 1000
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmTerminationResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    .line 1001
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmInitializationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    .line 1002
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmTerminationProcessingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    .line 1004
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmSessionDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    .line 1005
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    .line 1006
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    .line 1007
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramSuccess(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    .line 1008
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingDatagramFailed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    .line 1009
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsDemoMode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    .line 1010
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmMaxNtnSignalStrengthLevel(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    .line 1011
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    .line 1012
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    .line 1014
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfAutoExitDueToScreenOff(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    .line 1015
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfAutoExitDueToTnNetwork(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    .line 1016
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    .line 1017
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    .line 1018
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;->-$$Nest$fgetmMaxInactivityDurationSec(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierId()I
    .locals 0

    .line 1070
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCountOfAutoExitDueToScreenOff()I
    .locals 0

    .line 1078
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    return p0
.end method

.method public blacklist getCountOfAutoExitDueToTnNetwork()I
    .locals 0

    .line 1082
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramFailed()I
    .locals 0

    .line 1058
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    return p0
.end method

.method public blacklist getCountOfIncomingDatagramSuccess()I
    .locals 0

    .line 1054
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramFailed()I
    .locals 0

    .line 1050
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    return p0
.end method

.method public blacklist getCountOfOutgoingDatagramSuccess()I
    .locals 0

    .line 1046
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    return p0
.end method

.method public blacklist getCountOfSatelliteNotificationDisplayed()I
    .locals 0

    .line 1074
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    return p0
.end method

.method public blacklist getInitializationProcessingTime()J
    .locals 2

    .line 1034
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getIsDemoMode()Z
    .locals 0

    .line 1062
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    return p0
.end method

.method public blacklist getIsEmergency()Z
    .locals 0

    .line 1086
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    return p0
.end method

.method public blacklist getMaxInactivityDurationSec()I
    .locals 0

    .line 1094
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    return p0
.end method

.method public blacklist getMaxNtnSignalStrengthLevel()I
    .locals 0

    .line 1066
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    return p0
.end method

.method public blacklist getSatelliteServiceInitializationResult()I
    .locals 0

    .line 1022
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    return p0
.end method

.method public blacklist getSatelliteTechnology()I
    .locals 0

    .line 1026
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteTechnology:I

    return p0
.end method

.method public blacklist getSessionDuration()I
    .locals 0

    .line 1042
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    return p0
.end method

.method public blacklist getTerminationProcessingTime()J
    .locals 2

    .line 1038
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    return-wide v0
.end method

.method public blacklist getTerminationResult()I
    .locals 0

    .line 1030
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    return p0
.end method

.method public blacklist isNtnOnlyCarrier()Z
    .locals 0

    .line 1090
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionParams(, satelliteServiceInitializationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSatelliteServiceInitializationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TerminationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", InitializationProcessingTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mInitializationProcessingTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TerminationProcessingTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mTerminationProcessingTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SessionDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mSessionDurationSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfOutgoingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfOutgoingDatagramFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfOutgoingDatagramFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfIncomingDatagramSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramSuccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfIncomingDatagramFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfIncomingDatagramFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsDemoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsDemoMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxNtnSignalStrengthLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxNtnSignalStrengthLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfSatelliteNotificationDisplayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfSatelliteNotificationDisplayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfAutoExitDueToScreenOff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToScreenOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CountOfAutoExitDueToTnNetwork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mCountOfAutoExitDueToTnNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsNtnOnlyCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mIsNtnOnlyCarrier:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxInactivityDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->mMaxInactivityDurationSec:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
