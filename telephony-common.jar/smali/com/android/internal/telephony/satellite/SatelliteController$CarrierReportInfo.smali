.class Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;
.super Ljava/lang/Object;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierReportInfo"
.end annotation


# instance fields
.field blacklist mIsAnySubProvisioned:Z

.field blacklist mIsNtnOnlyCarrier:Z


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 9997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9998
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;->mIsAnySubProvisioned:Z

    .line 9999
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;->mIsNtnOnlyCarrier:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist aggregate(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 10004
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;->mIsAnySubProvisioned:Z

    .line 10006
    :cond_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/SatelliteController$CarrierReportInfo;->mIsNtnOnlyCarrier:Z

    return-void
.end method
